<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P3.aspx.cs" Inherits="_230801347.Ch_2.P3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <b>
        <asp:Label ID="lbl_txt" runat="server" Text="Select Your Favourite Movies"></asp:Label>
        <br />
    </b>
    <br />
    <asp:CheckBoxList ID="chkList_movies" runat="server" CellPadding="10" CellSpacing="10" RepeatColumns="3">
        <asp:ListItem>Iron Man Series</asp:ListItem>
        <asp:ListItem>Thor</asp:ListItem>
        <asp:ListItem>Spider Man</asp:ListItem>
        <asp:ListItem>Harry Potter</asp:ListItem>
        <asp:ListItem>Superman</asp:ListItem>
        <asp:ListItem>Pirates of The Carribean</asp:ListItem>
        <asp:ListItem>Max Payne</asp:ListItem>
    </asp:CheckBoxList>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button skinID="btn1" runat="server" OnClick="Button1_Click" Text="Button" Width="289px" />
    <br />
    <br />
    <asp:Label ID="lbl_selection" SkinID="lbl" runat="server"></asp:Label>
</asp:Content>
