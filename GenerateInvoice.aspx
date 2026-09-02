
<%@ Page Title="Generate Invoice" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GenerateInvoice.aspx.cs" Inherits="RentManagement.GenerateInvoice" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
         <h2 id="title"><%: Title %>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT TenantName FROM Invoice_Master"></asp:SqlDataSource>
    </h2>
        <table class="w-100">
            <tr>
                <td style="width: 178px; height: 43px">Select Month</td>
              <td>      
                  <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
          </td>

                 
     <td style="width: 178px; height: 43px">Select Tenant</td>
<td style="height: 43px; width: 269px">
    <asp:DropDownList ID="CboTenant" runat="server" Width="251px" DataSourceID="SqlDataSource2" DataTextField="TenantName" DataValueField="TenantName">
        <asp:ListItem>ALL</asp:ListItem>
    </asp:DropDownList>
</td>

                <td>  <asp:Button ID="btnShowDetails" runat="server" OnClick="btnShowDetails_Click" Text="Show Details" /> </td>
                <td style="height: 43px; font-size: 18pt; width: 407px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [InvoiceNumber], [InvoiceDate], [BillingFrom], [BillingTo], [TenantName], [Amount], [Status], [PaymentDate], [InvoiceGenDate], [billdate] FROM [Invoice_Master]">
                    </asp:SqlDataSource>
                     </td>
                <td style="height: 43px"></td>
                <td style="height: 43px"></td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="InvoiceNumber" DataSourceID="SqlDataSource1">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" InsertVisible="False" ReadOnly="True" SortExpression="InvoiceNumber" />
                            <asp:BoundField DataField="InvoiceDate" HeaderText="InvoiceDate" SortExpression="InvoiceDate" />
                            <asp:BoundField DataField="BillingFrom" HeaderText="BillingFrom" SortExpression="BillingFrom" />
                            <asp:BoundField DataField="BillingTo" HeaderText="BillingTo" SortExpression="BillingTo" />
                            <asp:BoundField DataField="TenantName" HeaderText="TenantName" SortExpression="TenantName" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" SortExpression="PaymentDate" />
                            <asp:BoundField DataField="InvoiceGenDate" HeaderText="InvoiceGenDate" SortExpression="InvoiceGenDate" />
                            <asp:BoundField DataField="billdate" HeaderText="billdate" SortExpression="billdate" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
            </table>
           </main>
</asp:Content>