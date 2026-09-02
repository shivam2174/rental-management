<%@ Page Title="Property Master" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PropertyInfo.aspx.cs" Inherits="RentManagement.PropertyInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OwnerCode], [OwnerName], [GSTHaryana], [GSTDelhi] FROM [Ownerinfo]"></asp:SqlDataSource>
          </h2>
    
  <table class="auto-style1">
      <tr>
          <td class="auto-style2">Property Owner</td>
          <td style="width: 329px">
            <asp:DropDownList ID="cboPropertyOwner" runat="server" AutoPostBack = "true"
          OnSelectedIndexChanged="cboPropertyOwner_SelectedIndexChanged" Width="369px">
    </asp:DropDownList>
          </td>
           <td class="auto-style2">&nbsp;</td>
 <td>
     &nbsp;</td>
      </tr>
     

 <tr>
          <td class="auto-style3">Property Description</td>
          <td class="auto-style4" colspan="3">
              <asp:TextBox ID="TxtPropertyDesc" runat="server" Width="940px"></asp:TextBox>
          </td>
      </tr>
     <tr>
          <td class="auto-style3">Property Address</td>
          <td class="auto-style4" colspan="3">
              <asp:TextBox ID="TxtPropertyAddress" runat="server" Width="939px"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td class="auto-style2">Unit No</td>
          <td style="width: 329px">
              <asp:TextBox ID="TxtPropertyUnitNo" runat="server" Width="348px"></asp:TextBox>
          </td>
          <td class="auto-style2">Tower</td>
<td>
    <asp:TextBox ID="TxtTower" runat="server" Width="348px"></asp:TextBox>
</td>
      </tr>
     
      <tr>
          <td class="auto-style2">City</td>
          <td style="width: 329px">
              <asp:TextBox ID="TxtCity" runat="server" Width="348px"></asp:TextBox>
          </td>
           <td class="auto-style2">State</td>
 <td>
     <asp:TextBox ID="txtState" runat="server" Width="348px"></asp:TextBox>
 </td>
      </tr>
    
      <tr>
          <td class="auto-style2">Pin Code</td>
          <td style="width: 329px">
              <asp:TextBox ID="txtPinCode" runat="server" Width="348px"></asp:TextBox>
          </td>
            <td class="auto-style2">Purchased On</td>
  <td>
      <asp:TextBox ID="txtpurchasedate" runat="server" Width="348px" TextMode="Date"></asp:TextBox>
  </td>
      </tr>
    
      <tr>
          <td class="auto-style2">Total Area</td>
          <td style="width: 329px">
              <asp:TextBox ID="txtTotalArea" runat="server" Width="343px"></asp:TextBox>
          </td>
           <td class="auto-style2">Price</td>
 <td>
     <asp:TextBox ID="txtPrice" runat="server" Width="343px"></asp:TextBox>
 </td>
      </tr>
     
      <tr>
          <td class="auto-style2">Per Sqft Rate</td>
          <td style="width: 329px">
              <asp:TextBox ID="txtPerSqftRAte" runat="server" Width="343px"></asp:TextBox>
          </td>
            <td class="auto-style3">Stamp Duty</td>
  <td class="auto-style4">
      <asp:TextBox ID="txtStampduty" runat="server" Width="343px"></asp:TextBox>
  </td>
      </tr>
     
      <tr>
          <td class="auto-style2">Total Purchase Price</td>
          <td style="width: 329px">
              <asp:TextBox ID="txttotalPurchaseValue" runat="server" Width="343px"></asp:TextBox>
          </td>
            <td class="auto-style2">GST Number</td>
  <td>
      <asp:TextBox ID="txtGST" runat="server" Width="343px" ReadOnly="True"></asp:TextBox>
  </td>
      </tr>
    
      <tr>
          <td class="auto-style2">Loan Against Property(LAP) Amount</td>
          <td style="width: 329px">
              <asp:TextBox ID="txtLAP" runat="server" Width="343px"></asp:TextBox>
          </td>
           <td class="auto-style2">Monthly Installment</td>
 <td>
     <asp:TextBox ID="txtMonthlyInstallment" runat="server" Width="343px"></asp:TextBox>
 </td>
      </tr>
     
      <tr>
          <td class="auto-style2">LAP Maturity</td>
          <td style="width: 329px">
              <asp:TextBox ID="txtMaturity" runat="server" Width="343px"></asp:TextBox>
          </td>
        
  <td class="auto-style2">Parking Slot</td>
 <td>
     <asp:TextBox ID="TxtParkingSlot" runat="server" Width="343px"></asp:TextBox>
 </td>
 
      </tr>

          <tr>
      <td class="auto-style2">Status</td>  
<td style="width: 329px">
    <asp:DropDownList ID="cbostatus" runat="server" Height="27px" Width="348px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Active</asp:ListItem>
        <asp:ListItem>Sold-out</asp:ListItem>
    </asp:DropDownList>
</td>
     </tr>


    
  </table>
  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PropertyInfo]"></asp:SqlDataSource>
  <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
    </main>
</asp:Content>
