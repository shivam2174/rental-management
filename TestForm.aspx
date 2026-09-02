
<%@ Page Title="TestForm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestForm.aspx.cs" Inherits="RentManagement.TestForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
            BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
            ForeColor="#663399" ShowGridLines="True" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"
            OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" Visible="False">
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" Wrap="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        </asp:Calendar>
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>


            <td>&nbsp;</td>
        </tr>
    </table>
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
       
    </main>
</asp:Content>
