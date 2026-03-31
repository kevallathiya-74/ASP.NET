<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P6.aspx.cs" Inherits="_230801347.Ch_2.P6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_txt" runat="server" Text="Choose your favourite colour : "></asp:Label>
    <br />
    <asp:RadioButtonList ID="rdList_color" runat="server" CellPadding="10" CellSpacing="10" RepeatDirection="Horizontal">
        <asp:ListItem>Red</asp:ListItem>
        <asp:ListItem>Blue</asp:ListItem>
        <asp:ListItem>Green</asp:ListItem>
        <asp:ListItem>Yellow</asp:ListItem>
        <asp:ListItem>Maroon</asp:ListItem>
        <asp:ListItem>Purple</asp:ListItem>
        <asp:ListItem>Black</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button SkinID="btn1" runat="server" Text="Select" Width="412px" OnClick="submit_Click" />
    <br />
    <br />
    <asp:Label SkinID="lbl" ID="lbl_selection" runat="server"></asp:Label>
</asp:Content>
