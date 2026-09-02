Drop  PROCEDURE [dbo].[Get_Invoice_generate]
GO
Create PROCEDURE [dbo].[Get_Invoice_generate]
	@StartDate date,
	@GenInvoice Numeric=0,
	@Tenant NVARCHAR=NULL
AS

Declare @FirstDOM Date
Declare @LastDOM Date
Declare @LastMonthStart Date
Declare @NoofDays Numeric

set @FirstDOM = (select DATEADD(d,-1,DATEADD(mm,DATEDIFF(m,0,@Startdate),1 )))
set @LastDOM = (select DATEADD(s,-1,DATEADD(mm,DATEDIFF(m,0,@Startdate)+1,0))) 
set @LastMonthStart = DATEADD(MONTH,-1,@FirstDOM)
Select @NoofDays = datediff(DAY, @FirstDOM,@LastDOM)

	Create table #Tmpdata
	(
	TenantName NVARCHAr(50),
	ParkingChargeble Numeric,
	InvoiceStatus NVARCHAR(50),
	InvoiceNumber Numeric,
	InvoiceDate NVARCHAR(50),
	TotalInvoice Numeric,
	StartDate Date,
	EndDate Date,
	InvoiceIssuDate Date,
	PaymentDate Date,
	RentStartDate Date,
	RentDays Numeric,
	Actualdays Numeric,
	CGST Numeric,
	CGSTAmt Numeric,
	SGST NUMERIC,
	SGSTamt Numeric
	)
		
	Insert Into #Tmpdata
	SELECT 
	TM.TenantName ,	
	tm.ParkingChargeable,
	'Pending',
	0,
	'',
	0,
	@FirstDOM,
	@LastDOM,
	Dateadd(Day,tm.InvoiceIssueDate-1,@LastMonthStart),
	Dateadd(Day,tm.PaymentDate-1,@FirstDOM),
	tm.Term1From,
	@NoofDays+1,
	datediff(d,tm.Term1From,@FirstDOM),
	TM.CGSTRate,
	0,
	TM.SGSTRate,
	0
	FROM Tenantinfo TM	
	Where TenantStatus ='Active'
	

	Update td SET td.InvoiceNumber=Inv.InvoiceNumber,
	td.InvoiceDate=Inv.InvoiceDate,
	td.InvoiceStatus ='Generated'
	from #Tmpdata td Join Invoice_Master inv 
	ON Inv.TenantName =td.TenantName 	
	WHERE Inv.BillingFrom= @FirstDOM

	Update td 
	SET td.TotalInvoice=(Select Sum(Rent) 
					from Invoice_details where InvoiceNumber=td.InvoiceNumber
					)	
	from #Tmpdata td 

	Create table #TmpRate
	(
	PropertyCode NVARCHAr(50), 
	TenantName NVARCHAr(50),
	RentType NVARCHAr(10),
	RateValue Numeric,
	BillDays Numeric,
	AvailableDay Numeric,
	RentCharge Numeric,
	UnitNo  NVARCHAr(50),
	Area Numeric,
	Rate Numeric,
	Slots Numeric
	)

	Insert Into #TmpRate
	SELECT tR.PropertyCode,
	td.TenantName ,
	TR.RentType,
	tr.Rate * tr.Slots,	
	iif(td.RentDays>td.Actualdays,td.Actualdays,td.RentDays),
	td.RentDays,
	0,
	pi.PropertyAddressLine1,
	ti.TotalArea,
	ti.PerSqftRate,
	tr.Slots
	FROM #Tmpdata td
	JOIN TenantRate TR 
		ON td.TenantName=TR.TenantName
    Join TenantInfo ti on ti.TenantName =tr.TenantName
	Join PropertyInfo pi on pi.PropertyCode =ti.PropertyCode 
	Where TR.Status ='Active' 
	
	UPDATE #TmpRate SET RentCharge =(RateValue*BillDays)/AvailableDay

	Update td 
	SET td.TotalInvoice=( Select Sum(RentCharge) 
					from #TmpRate where TenantName =td.TenantName
					)	
	from #Tmpdata td 
	WHERE td.InvoiceStatus ='Pending'

	Update td 
	SET td.CGSTAmt = td.TotalInvoice * td.CGST	,
	td.SGSTAmt = td.TotalInvoice * td.SGST
	from #Tmpdata td 
	WHERE td.InvoiceStatus ='Pending'


	Select pi.Ownercode,
	TM.TenantName,	
	PI.Ownercode,
	TM.TenantGST,	
	td.InvoiceStatus,
	td.TotalInvoice,
	td.InvoiceNumber,
	td.InvoiceDate,
	Td.InvoiceIssuDate ,
	Td.PaymentDate,
	Td.StartDate ,
	td.EndDate,
	Td.RentStartDate,
	td.RentDays
	from Tenantinfo tm 
	JOIN PropertyInfo PI
	 ON PI.PropertyCode=tm.PropertyCode
	 JOIN #Tmpdata td on td.TenantName=tm.TenantName
	if @GenInvoice=1

	BEGIN
	Declare @InvDate date
	declare @newId INT
	Set @InvDate =getdate()
	DECLARE DataCursor CURSOR FOR
    SELECT startdate,EndDate,TenantName,TotalInvoice,CGSTAmt,CGST,SGSTamt,SGST,PaymentDate
	FROM #tmpdata

    -- Open the cursor
    OPEN DataCursor

    -- Declare variables to hold the values of each column
    DECLARE @startdate1 date
	Declare @enddate date
	Declare @tenantname nVARCHAR(50)
	Declare @totalamount Numeric
	Declare @CGST Numeric
	declare @SGST Numeric
	Declare @CGSTamt Numeric
	Declare @SGSTamt Numeric 
	Declare @OwnerCode NVARCHAR(50)
	Declare @PaymentDate date

    -- Fetch the next row from the cursor into the variables
    FETCH NEXT FROM DataCursor INTO @startdate, @enddate,@tenantname,@totalamount,@CGST
	,@SGST,@CGSTamt,@SGSTamt,@PaymentDate

    -- Loop until there are no more rows to fetch
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Insert the values of the variables into the destination table
        INSERT INTO Invoice_Master 
		VALUES (@InvDate, @startdate1,@enddate,@tenantname,@totalamount,@CGST,@SGST
		,@CGSTamt,@SGSTamt,'Generated',@PaymentDate)
		
		  select @newId = Scope_Identity() 

		  Insert into Invoice_details 
		  Select @newId,tr.RentType,tr.Rate,tr.Slots,tr.PropertyCode,
		  tr.UnitNo,tr.Area,tr.rate,tr.RateValue
		  from #TmpRate tr where tr.TenantName =@tenantname 
        -- Fetch the next row from the cursor into the variables
        FETCH NEXT FROM DataCursor INTO @startdate1, @enddate,@tenantname,@totalamount,@CGST
	,@SGST,@CGSTamt,@SGSTamt,@PaymentDate
    END

    -- Close the cursor
    CLOSE DataCursor

    -- Deallocate the cursor
    DEALLOCATE DataCursor

	END
	
	Drop table #TmpRate

RETURN 0