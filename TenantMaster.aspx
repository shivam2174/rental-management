<%@ Page Title="Tenant Master" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TenantMaster.aspx.cs" Inherits="RentManagement.TenantMaster" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
             
 <table class="auto-style1">
     <tr>
         <td class="auto-style5">Tenant Name</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtTenant" runat="server" Width="1044px"></asp:TextBox>
         </td>
         
     </tr>
     <tr>
         <td class="auto-style5">Office Address</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtOfficeAddressLine1" runat="server" Width="1043px"></asp:TextBox>
         </td>       
     </tr>

     <tr>
         <td class="auto-style5">City</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtOfficeCity" runat="server" Width="277px"></asp:TextBox>
         </td>
       
     </tr>
     <tr>
  <td class="auto-style4">State</td>
  <td>
      <asp:TextBox ID="txtOfficeState" runat="server" Width="277px"></asp:TextBox>
  </td>
     </tr>
     <tr>
         <td class="auto-style5">Pin Code</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtOfficePinCode" runat="server" Width="277px"></asp:TextBox>
         </td>       
     </tr>
     <tr>
         <td class="auto-style5">Billing Address</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtBillingAddressLine1" runat="server" Width="1038px"></asp:TextBox>
         </td>
            </tr>
     <tr>
         <td class="auto-style5">City</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtBillingCity" runat="server" Width="277px"></asp:TextBox>
         </td>
       
     </tr>
     <tr>
  <td class="auto-style4">State</td>
  <td>
      <asp:TextBox ID="txtBillingState" runat="server" Width="277px"></asp:TextBox>
  </td>
     </tr>
     <tr>
         <td class="auto-style5">Pin Code</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtBillingPincode" runat="server" Width="277px"></asp:TextBox>
         </td>
       
     </tr>
     <tr>
         <td class="auto-style5">Contact Person</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtContactPerson" runat="server" Width="277px"></asp:TextBox>
         </td>
       
     </tr>
     <TR>
           <td class="auto-style4">Mobile</td>
  <td>
      <asp:TextBox ID="txtMobile" runat="server" Width="277px"></asp:TextBox>
  </td>
     </TR>
     <tr>
         <td class="auto-style5">Phone No.</td>
         <td class="auto-style3">
             <asp:TextBox ID="txtPhone" runat="server" Width="277px"></asp:TextBox>
         </td>
      
     </tr>
   
     <tr>
   <td class="auto-style4">Email</td>
   <td>
       <asp:TextBox ID="txtEmail" runat="server" Width="277px"></asp:TextBox>
   </td>

     </tr>
      <tr>
<td class="auto-style4">PAN No</td>
<td>
    <asp:TextBox ID="txtPANno" runat="server" Width="277px"></asp:TextBox>
</td>

  </tr>

           <tr>
<td class="auto-style4">Aadhar No</td>
<td>
    <asp:TextBox ID="txtaadhar" runat="server" Width="277px"></asp:TextBox>
</td>

  </tr>
     <tr>
         <td class="auto-style6">Tenant GST No</td>
         <td class="auto-style7">
             <asp:TextBox ID="txtTenantGST" runat="server" Width="277px"></asp:TextBox>
         </td>
        
     </tr>
     <tr>
     
         <td class="auto-style20">Tenant Status</td>
         <td class="auto-style21">
             <asp:DropDownList ID="cbostatus" runat="server">
                 <asp:ListItem>Active</asp:ListItem>
                 <asp:ListItem>In-Active</asp:ListItem>
             </asp:DropDownList>
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
     </tr>
 </table>

    </main>
</asp:Content>

