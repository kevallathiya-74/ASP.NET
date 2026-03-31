<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P4.aspx.cs" Inherits="_230801347.Ch_2.P4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:TextBox ID="txt_dis" runat="server" SkinID="textbox" Width="375px"></asp:TextBox>
        <br />
        <br />
        <asp:Button runat="server" OnClick="btn_enable_Click" Text="Enable" Width="158px" SkinID="btn1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" OnClick="btn_disable_Click" Text="Disable" Width="158px" SkinID="btn3" />
    </div>
</asp:Content>
