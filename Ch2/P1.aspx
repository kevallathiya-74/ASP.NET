<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P1.aspx.cs" Inherits="_230801347.Ch_2.P1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <b>
        <asp:Label ID="lbl_txt" runat="server" Text="Welcome to our website..."></asp:Label>
        <br />
    </b>
    <br />
    <asp:Button skinID="btn3" runat="server" OnClick="btn_red_Click" Text="Red" Width="89px" />
    &nbsp;<asp:Button skinID="btn1" runat="server" OnClick="btn_green_Click" Text="Green" Width="89px" />
    &nbsp;<asp:Button skinID="btn2" runat="server" OnClick="btn_blue_Click" Text="Blue" Width="89px" />
    <br />
    <asp:Button skinID="btn4" runat="server" OnClick="btn_reset_Click" Text="Reset" Width="299px" />
    <br />
</asp:Content>
