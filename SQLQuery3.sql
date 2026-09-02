USE [C:\RENT MANAGEMENT\RENTMANAGEMENT\APP_DATA\DATABASE1.MDF]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[Get_Invoice_Data]

SELECT	@return_value as 'Return Value'

GO
