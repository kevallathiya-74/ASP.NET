<%@ Page Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P12.aspx.cs" Inherits="_230801347.Ch_1.P12" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
            <asp:Label ID="Label1" runat="server" Text="Enter a value 1 :"></asp:Label>
&nbsp;
            <asp:TextBox ID="txt_val1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter a value 2 :"></asp:Label>
&nbsp;
            <asp:TextBox ID="txt_val2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_swap" runat="server" OnClick="btn_chk_Click" Text="Swap" Width="223px" />
        </div>
</asp:Content>
