<%@ Page Title="Property Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PropertyDetails.aspx.cs" Inherits="RentManagement.PropertyDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
       
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PropertyMaster]"></asp:SqlDataSource>
  <asp:GridView ID="PropertyGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
      <AlternatingRowStyle BackColor="#DCDCDC" />
      <Columns>
          <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
          <asp:BoundField DataField="OwnerCode" HeaderText="Owner" SortExpression="OwnerCode" />
          <asp:BoundField DataField="PropertyDesc" HeaderText="Property Description" SortExpression="PropertyDesc" />
          <asp:BoundField DataField="PropertyAddress" HeaderText="Property Address" SortExpression="PropertyAddress" />
          <asp:BoundField DataField="UnitNo" HeaderText="Unit No" SortExpression="UnitNo" />
          <asp:BoundField DataField="Tower" HeaderText="Tower" SortExpression="Tower" />
          <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
          <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
          <asp:BoundField DataField="PurchasedOn" HeaderText="Purchased On" InsertVisible="true" SortExpression="PurchasedOn" />
          <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
          <asp:BoundField DataField="TotalArea" HeaderText="Total Area" SortExpression="TotalArea" />       
          <asp:BoundField DataField="GSTNumber" HeaderText="GST Number" SortExpression="GSTNumber" />             
          <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
          <asp:BoundField DataField="PinCode" HeaderText="PinCode" SortExpression="PinCode" />
          <asp:BoundField DataField="ParkingSlot" HeaderText="ParkingSlot" SortExpression="ParkingSlot" />
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
  <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add New" />
    </main>
</asp:Content>
