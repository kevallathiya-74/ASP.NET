<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P10.aspx.cs" Inherits="_230801347.Ch_2.P10" %>

<%@ Register Src="~/Extra/P10 User_Control.ascx" TagName="txt_current" TagPrefix="dtime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" Text="Current Date & Time : " runat="server" />
    <dtime:txt_current ID="txt_dtime" runat="server" />
    <br />
    <asp:Button SkinID="btn1" runat="server" OnClick="btn_fetch_Click" Text="Fetch" Width="231px" />
</asp:Content>
