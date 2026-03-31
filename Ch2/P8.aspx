<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P8.aspx.cs" Inherits="_230801347.Ch_2.P8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Extra/P8.css" type="text/css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_txt" runat="server" Text="Welcome to our website..." Font-Names="Arial"></asp:Label>
    <br />
    <br />
    <asp:Button SkinID="btn1" runat="server" OnClick="btn_bold_Click" Text="Bold" Width="89px" />
    &nbsp;<asp:Button SkinID="btn2" runat="server" OnClick="btn_italic_Click" Text="Italic" Width="89px" Font-Italic="true" />
    &nbsp;<asp:Button SkinID="btn3" runat="server" OnClick="btn_bgcolor_Click" Text="Background Color Change" Width="230px" />
    <br />
    <asp:Button SkinID="btn4" runat="server" OnClick="btn_reset_Click" Text="Reset" Width="440px" />
    <br />
</asp:Content>
