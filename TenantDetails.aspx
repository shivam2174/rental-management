<%@ Page Title="Tenant Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TenantDetails.aspx.cs" Inherits="RentManagement.TenantDetails" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <main aria-labelledby="title">
               <h2 id="Title"><%: Title %>.</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TenantMaster]"></asp:SqlDataSource>
 <asp:GridView ID="TenantGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
     <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
        
         <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
         <asp:BoundField DataField="TenantName" HeaderText="TenantName" SortExpression="TenantName" />
           <asp:BoundField DataField="PropertyCode" HeaderText="PropertyCode" SortExpression="PropertyCode" />
           <asp:BoundField DataField="LeasePeriodFrom" HeaderText="LeasePeriodFrom" SortExpression="LeasePeriodFrom" />
  <asp:BoundField DataField="LeasePeriodTo" HeaderText="LeasePeriodTo" SortExpression="LeasePeriodTo" />
  <asp:BoundField DataField="Term1From" HeaderText="Term1From" SortExpression="Term1From" />
  <asp:BoundField DataField="Term1To" HeaderText="Term1To" SortExpression="Term1To" />
       
<asp:BoundField DataField="Term2From" HeaderText="Term2From" SortExpression="Term2From" />
<asp:BoundField DataField="Term2To" HeaderText="Term2To" SortExpression="Term2To" />
         <asp:BoundField DataField="Term3From" HeaderText="Term3From" SortExpression="Term3From" />
         <asp:BoundField DataField="Term3To" HeaderText="Term3To" SortExpression="Term3To" />
         <asp:BoundField DataField="LockingFrom" HeaderText="LockingFrom" SortExpression="LockingFrom" />
       
         <asp:BoundField DataField="LockingTo" HeaderText="LockingTo" SortExpression="LockingTo" />
         <asp:BoundField DataField="lockingPeriod" HeaderText="lockingPeriod" SortExpression="lockingPeriod" />
         <asp:BoundField DataField="ParkingFree" HeaderText="ParkingFree" SortExpression="ParkingFree" />
         <asp:BoundField DataField="ParkingChargeable" HeaderText="ParkingChargeable" SortExpression="ParkingChargeable" />
         <asp:BoundField DataField="ParkingRate" HeaderText="ParkingRate" SortExpression="ParkingRate" />
         <asp:BoundField DataField="NoticePeriod" HeaderText="NoticePeriod" SortExpression="NoticePeriod" />
         <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
         <asp:BoundField DataField="TotalArea" HeaderText="TotalArea" SortExpression="TotalArea" />
         <asp:BoundField DataField="PerSqftRate" HeaderText="PerSqftRate" SortExpression="PerSqftRate" />
         <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" SortExpression="PaymentDate" />
         <asp:BoundField DataField="DelayCharge" HeaderText="DelayCharge" SortExpression="DelayCharge" />
         <asp:BoundField DataField="EsclationRate" HeaderText="EsclationRate" SortExpression="EsclationRate" />
         <asp:BoundField DataField="EsclationAfter" HeaderText="EsclationAfter" SortExpression="EsclationAfter" />
         <asp:BoundField DataField="InvoiceIssueDate" HeaderText="InvoiceIssueDate" SortExpression="InvoiceIssueDate" />
         <asp:BoundField DataField="TenantStatus" HeaderText="TenantStatus" SortExpression="TenantStatus" />
         <asp:BoundField DataField="SecurityAmt" HeaderText="SecurityAmt" SortExpression="SecurityAmt" />
         <asp:BoundField DataField="SecurityMonth" HeaderText="SecurityMonth" SortExpression="SecurityMonth" />
         <asp:BoundField DataField="RentStartDate" HeaderText="RentStartDate" SortExpression="RentStartDate" />
       
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add New" />
    </main>
</asp:Content>


