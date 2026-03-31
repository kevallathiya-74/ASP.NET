<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P12.aspx.cs" Inherits="_230801347.Ch_2.P12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Choose One Image :"></asp:Label>
    <br />
    <br />
    <asp:ImageButton ID="img_round" runat="server" Height="70px" ImageUrl="~/Extra/Image/Round.png" OnClick="img_round_Click" Width="70px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="img_square" runat="server" Height="70px" ImageUrl="~/Extra/Image/Square.png" OnClick="img_square_Click" Width="70px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="img_traingle" runat="server" Height="70px" ImageUrl="~/Extra/Image/Triangle.png" OnClick="img_traingle_Click" Width="70px" />
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Choosen image is : "></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:Image ID="img_choosen" runat="server" Height="80px" ImageAlign="Middle" Width="80px" />
    &nbsp;
</asp:Content>
