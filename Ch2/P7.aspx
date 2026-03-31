<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P7.aspx.cs" Inherits="_230801347.Ch_2.P7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Enter text : "></asp:Label>
    &nbsp;&nbsp;
            <asp:TextBox ID="txt_restrict" runat="server" SkinID="textbox" MaxLength="20"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;
    <asp:Button SkinID="btn1" runat="server" OnClick="btn_submit_Click" Text="Submit" Width="239px" />
    <br />
    <asp:Label SkinID="lbl" ID="lbl_input" runat="server"></asp:Label>
</asp:Content>
