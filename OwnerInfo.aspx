
<%@ Page Title="Owner Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OwnerInfo.aspx.cs" Inherits="RentManagement.OwnerInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
      
      <div>
          Add Owner Details</div>
      <div>
      </div>
      <table class="auto-style1" style="width: 909px">
          <tr>
              <td class="auto-style2" style="width: 178px">Owner Code</td>
              <td style="width: 365px">
                  <asp:TextBox ID="TxtOwnercode" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style3" style="width: 178px">Owner Name</td>
              <td class="auto-style4" style="width: 365px">
                  <asp:TextBox ID="TxtOwnerName" runat="server" Width="581px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style2" style="width: 178px">Address</td>
              <td style="width: 365px">
                  <asp:TextBox ID="TxtAddressLine1" runat="server" Width="581px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style2" style="width: 178px">City</td>
              <td style="width: 365px">
                  <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
              </td>
          </tr>
              <tr>
     <td class="auto-style2" style="width: 178px">State</td>
     <td style="width: 365px">
         <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
     </td>
 </tr>
          <tr>
              <td class="auto-style3" style="width: 178px">Pin Code</td>
              <td class="auto-style4" style="width: 365px">
                  <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style2" style="width: 178px">Mobile</td>
              <td style="width: 365px">
                  <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style2" style="width: 178px">Email</td>
              <td style="width: 365px">
                  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
              </td>
          </tr>
           <tr>
     <td class="auto-style2" style="width: 178px">Pan No</td>
     <td style="width: 365px">
         <asp:TextBox ID="txtPanNo" runat="server"></asp:TextBox>
     </td>
 </tr>
          <tr>
              <td class="auto-style2" style="width: 178px">GST No.(Haryana)</td>
              <td style="width: 365px">
                  <asp:TextBox ID="txtGSTHaryana" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style2" style="width: 178px">GST No.(Delhi)</td>
              <td style="width: 365px">
                  <asp:TextBox ID="txtGSTDelhi" runat="server"></asp:TextBox>
              </td>
          </tr>
      </table>
      <asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="Add" />
      <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Ownerinfo] ORDER BY [OwnerName]"></asp:SqlDataSource>


    </main>
</asp:Content>


  
