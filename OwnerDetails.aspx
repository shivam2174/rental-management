

<%@ Page Title="Owner Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OwnerDetails.aspx.cs" Inherits="RentManagement.OwnerDetails" %>


    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <main aria-labelledby="title">
               <h2 id="title"><%: Title %>.</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ownerinfo]"></asp:SqlDataSource>
 <asp:GridView ID="OwnerGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" AllowSorting="True">
     <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
        
         <asp:BoundField DataField="OwnerCode" HeaderText="Owner Code" SortExpression="OwnerCode" />
         <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" SortExpression="OwnerName" />
         <asp:BoundField DataField="OwnerAddress1" HeaderText="Address" SortExpression="OwnerAddress1" />
         <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
         <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
          <asp:BoundField DataField="PinCode" HeaderText="Pin Code" SortExpression="PinCode" />
           <asp:BoundField DataField="PanNo" HeaderText="Pan No" SortExpression="PanNo" />
         <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
         <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
         <asp:BoundField DataField="GSTHaryana" HeaderText="GST Haryana" SortExpression="GSTHaryana" />
         <asp:BoundField DataField="GSTDelhi" HeaderText="GST Delhi" SortExpression="GSTDelhi" />
         <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
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
           
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ownerinfo]"></asp:SqlDataSource>
           
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add New" />
           
       
    </main>
</asp:Content>


