<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P15.aspx.cs" Inherits="_230801347.Ch_2.P15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .label {
            text-align: center;
        }
    </style>

    <asp:Calendar ID="calender" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <asp:Button SkinID="btn1" runat="server" Text="Fetch" Width="344px" OnClick="btn_fetch_Click" />
    <br />
    <br />
    <asp:Label SkinID="lbl" ID="lbl_dt" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label" CssClass="label" runat="server" Text="List Box" Width="344px" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <asp:ListBox ID="lstBox_1" runat="server">
        <asp:ListItem>Rajkot</asp:ListItem>
        <asp:ListItem>Ahmedabad</asp:ListItem>
        <asp:ListItem>Morbi</asp:ListItem>
        <asp:ListItem>Upleta</asp:ListItem>
        <asp:ListItem>Jamnagar</asp:ListItem>
        <asp:ListItem>Gondal</asp:ListItem>
    </asp:ListBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ListBox ID="lstBox_2" runat="server">
        <asp:ListItem>Surat</asp:ListItem>
    </asp:ListBox>
    <br />
    <asp:Button SkinID="btn1" runat="server" OnClick="btn_right_Click" Text="&gt;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button SkinID="btn2" runat="server" OnClick="btn_rightMulti_Click" Text="&gt;&gt;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button SkinID="btn1" runat="server" OnClick="btn_left_Click" Text="&lt;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button SkinID="btn2" runat="server" OnClick="btn_leftAll_Click" Text="&lt;&lt;" />
    <br />
</asp:Content>
