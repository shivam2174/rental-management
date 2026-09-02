
<%@ Page Title="Tenant Master" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TenantInfo.aspx.cs" Inherits="RentManagement.TenantInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
             
 <table class="auto-style1">
     <tr>
         <td class="auto-style5">Tenant Name</td>
             <td style="width: 267px">
        <asp:DropDownList ID="cboTenant" runat="server" AutoPostBack = "True"
      OnSelectedIndexChanged="cboTenant_SelectedIndexChanged" Width="296px" DataSourceID="SqlDataSource3" DataTextField="TenantName" DataValueField="TenantName">
</asp:DropDownList>
      </td>


         <td class="auto-style4" style="width: 198px">Property Code</td>

               <td style="width: 304px">
        <asp:DropDownList ID="cboProperty" runat="server" AutoPostBack = "true"
      OnSelectedIndexChanged="cboProperty_SelectedIndexChanged" Width="277px" Height="28px">
</asp:DropDownList>
      </td>
        
          <td class="auto-style20">Tenant Status</td>
 <td class="auto-style21">
     <asp:DropDownList ID="cbostatus" runat="server">
         <asp:ListItem>Active</asp:ListItem>
         <asp:ListItem>In-Active</asp:ListItem>
     </asp:DropDownList>
 </td>
         
     </tr>

      <tr>
     <td class="auto-style5">&nbsp;Total Area</td>
     <td class="auto-style3" style="width: 267px">
         <asp:TextBox ID="txtTotalArea" runat="server" Width="277px"></asp:TextBox>
     </td>
     <td class="auto-style4" style="width: 198px">Per Sqft Rate</td>
     <td style="width: 304px">
         <asp:TextBox ID="txtPerSqRate" runat="server" Width="277px"></asp:TextBox>
     </td>
  <td class="auto-style16">Monthly Rent</td>
  <td class="auto-style17">
      <asp:TextBox ID="txtMonthlyRent" runat="server" Width="183px"></asp:TextBox>
  </td>
 </tr>

    <tr>
     <td class="auto-style5">Parking Slot Chargeable</td>
     <td class="auto-style3" style="width: 267px">
         <asp:TextBox ID="txtParkingChargeable" runat="server" Width="277px"></asp:TextBox>
     </td>
     <td class="auto-style4" style="width: 198px">Charge per Slot</td>
     <td style="width: 304px">
         <asp:TextBox ID="txtParkingRate" runat="server" Width="277px"></asp:TextBox>
     </td>
          <td class="auto-style4" style="width: 198px">Parking Slot Free</td>
  <td style="width: 304px">
      <asp:TextBox ID="txtParkingFree" runat="server" Width="182px"></asp:TextBox>
  </td>
 </tr>

        <tr>
       <td class="auto-style5">Last day Monthly Payment</td>
       <td class="auto-style3" style="width: 267px">
           <asp:TextBox ID="txtPaymentDate" runat="server" Width="277px"></asp:TextBox>
       </td>
       <td class="auto-style4" style="width: 198px">Delay Payment Charges/Annum</td>
       <td style="width: 304px">
           <asp:TextBox ID="txtDelayRate" runat="server" Width="277px"></asp:TextBox>
       </td>
         <td class="auto-style18">Invoice Issue Date</td>
<td class="auto-style19" style="width: 267px">
    <asp:TextBox ID="txtInvoiceDate" runat="server" Width="181px"></asp:TextBox>
</td>
   </tr>
      <tr>

    <td class="auto-style8" style="width: 198px">Esclation After</td>
<td class="auto-style9" style="width: 304px">
    <asp:TextBox ID="txtesclationPeriod" runat="server" Width="277px" OnTextChanged="txtesclationPeriod_TextChanged"></asp:TextBox>
</td>
       <td class="auto-style6">Esclation @</td>
       <td class="auto-style7" style="width: 267px">
           <asp:TextBox ID="txtesclationRate" runat="server" Width="277px"></asp:TextBox>
       </td>
              <td class="auto-style5" style="width: 198px">Rent Start Date</td>
<td class="auto-style3" style="width: 304px">
    <asp:TextBox ID="txtRentstart" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
</td>  
   </tr>
        <tr>
         <td class="auto-style10">Lease Period From</td>
         <td class="auto-style11" style="width: 267px">
             <asp:TextBox ID="txtLeaseFrom" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
         <td class="auto-style12" style="width: 198px">To</td>
         <td class="auto-style13" style="width: 304px">
             <asp:TextBox ID="txtLeaseTo" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td class="auto-style5">First Term From</td>
         <td class="auto-style3" style="width: 267px">
             <asp:TextBox ID="txtTerm1From" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
         <td class="auto-style4" style="width: 198px">To</td>
         <td style="width: 304px">
             <asp:TextBox ID="txtTerm1To" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td class="auto-style5">Second Term From</td>
         <td class="auto-style3" style="width: 267px">
             <asp:TextBox ID="txtTerm2From" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
         <td class="auto-style4" style="width: 198px">To</td>
         <td style="width: 304px">
             <asp:TextBox ID="txtTerm2To" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td class="auto-style5">Third Term From</td>
         <td class="auto-style3" style="width: 267px">
             <asp:TextBox ID="txtTerm3From" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
         <td class="auto-style4" style="width: 198px">To</td>
         <td style="width: 304px">
             <asp:TextBox ID="txtTerm3To" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
     </tr>
     
     <tr>
         <td class="auto-style5">Locking Period from </td>
         <td class="auto-style3" style="width: 267px">
             <asp:TextBox ID="txtLockingFrom" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
         <td class="auto-style4" style="width: 198px">To</td>
         <td style="width: 304px">
             <asp:TextBox ID="txtLockingTo" runat="server" Width="277px" TextMode="Date"></asp:TextBox>
         </td>
           <td class="auto-style5">Locking Period for </td>
  <td class="auto-style3" style="width: 267px">
      <asp:TextBox ID="txtLockingFor" runat="server" Width="277px"></asp:TextBox>
  </td>

     </tr>
  
    
     <tr>
         <td class="auto-style14">Notice Period after locking Period</td>
         <td class="auto-style15" style="width: 267px">
             <asp:TextBox ID="txtNoticePeriod" runat="server" Width="277px"></asp:TextBox>
         </td>     
    
         <td class="auto-style5">Refundable Security</td>
         <td class="auto-style3" style="width: 267px">
             <asp:TextBox ID="txtSecurity" runat="server" Width="277px"></asp:TextBox>
         </td>
         <td class="auto-style4" style="width: 198px">Security Months</td>
         <td style="width: 304px">
             <asp:TextBox ID="txtSecurityMonth" runat="server" Width="277px"></asp:TextBox>
         </td>
     </tr>
 </table>
 <table class="auto-style1">
     <tr>
         <td class="auto-style5">
             <asp:Button ID="btnSave" runat="server" Text="Add" OnClick="btnSave_Click" style="height: 35px" />
             <asp:Label ID="lblmessage" runat="server"></asp:Label>
         </td>
         <td class="auto-style3">&nbsp;</td>
         <td class="auto-style4">&nbsp;</td>
         <td>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TenantMaster]"></asp:SqlDataSource>
         </td>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TenantName], [Id] FROM [TenantDetails]"></asp:SqlDataSource>
  
     </tr>
 </table>

    </main>
</asp:Content>
