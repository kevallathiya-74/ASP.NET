<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P2.aspx.cs" Inherits="_230801347.Ch_2.P2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Enter width : "></asp:Label>
        &nbsp;&nbsp;
            <asp:TextBox ID="txt_width" runat="server" SkinID="textbox"></asp:TextBox>
        <br />
        <br />
        <asp:Button runat="server" OnClick="btn_set_Click" Text="Set" Width="249px" skinId="btn1"/>
    </div>
</asp:Content>
