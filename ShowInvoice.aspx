<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowInvoice.aspx.cs" Inherits="RentManagement.ShowInvoice" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:Label ID="Label1" runat="server" Text="Invoice Number"></asp:Label>
        <asp:DropDownList ID="DropDownInvoice" runat="server" DataSourceID="ObjectDataSource1" DataTextField="InvoiceNumber" DataValueField="InvoiceNumber">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <br />
      
        <asp:SqlDataSource ID="ReportPrint" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [InvoiceNumber], [InvoiceDate], [BillingFrom], [BillingTo], [Tenant], [Inv_Amt], [CGST], [SGST], [CGSTAmt], [SGSTamt], [Status], [PaymentDueDate], [InvoiceGenDate], [billdate], [Slots], [PCode], [UnitNo], [Area], [OfficeAddress1], [OfficeCity], [OfficePinCode], [Rate], [OfficeState], [Ten_Pan], [Ten_Aadhar], [Ten_Mobile], [Ten_Email], [ten_CP], [Ten_bill_Add], [BillingCity], [BillingState], [BillingPinCode], [TenantGST], [PropertyAddress], [PropertyDesc], [OwnerCode], [OwnerName], [OwnerAddress1], [City], [State], [Mobile], [Email], [GSTHaryana], [GSTDelhi], [PanNo] FROM [InvoicePrint_view]">
        </asp:SqlDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="RentManagement.Database1DataSetTableAdapters.Invoice_MasterTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_InvoiceNumber" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="InvoiceDate" Type="DateTime" />
                <asp:Parameter Name="BillingFrom" Type="DateTime" />
                <asp:Parameter Name="BillingTo" Type="DateTime" />
                <asp:Parameter Name="TenantName" Type="String" />
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="CGST" Type="Decimal" />
                <asp:Parameter Name="SGST" Type="Decimal" />
                <asp:Parameter Name="CGSTAmt" Type="Decimal" />
                <asp:Parameter Name="SGSTamt" Type="Decimal" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="PaymentDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="InvoiceDate" Type="DateTime" />
                <asp:Parameter Name="BillingFrom" Type="DateTime" />
                <asp:Parameter Name="BillingTo" Type="DateTime" />
                <asp:Parameter Name="TenantName" Type="String" />
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="CGST" Type="Decimal" />
                <asp:Parameter Name="SGST" Type="Decimal" />
                <asp:Parameter Name="CGSTAmt" Type="Decimal" />
                <asp:Parameter Name="SGSTamt" Type="Decimal" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="PaymentDate" Type="DateTime" />
                <asp:Parameter Name="Original_InvoiceNumber" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
      
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="RentManagement.Database1DataSetttTableAdapters.InvoicePrint_viewTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
      
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="963px" Height="687px">
            <LocalReport ReportPath="Invoice.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ReportPrint" Name="DataSet1MN" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData" TypeName="RentManagement.Database1DataSetttTableAdapters.InvoicePrint_viewTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="RentManagement.InvoiceDataForReportTableAdapters.Get_Invoice_DataTableAdapter"></asp:ObjectDataSource>
      
    </form>
</body>
</html>
