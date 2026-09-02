USE [C:\RENT MANAGEMENT\RENTMANAGEMENT\APP_DATA\DATABASE1.MDF]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[Get_Invoice_generate]
		@StartDate = '10-11-2023',
		@GenInvoice=1


SELECT	@return_value as 'Return Value'

GO
