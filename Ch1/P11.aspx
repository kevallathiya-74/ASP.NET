<%@ Page Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P11.aspx.cs" Inherits="_230801347.Ch_1.P11" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>
            <asp:Label ID="Label1" runat="server" Text="Enter a age :"></asp:Label>
&nbsp;
            <asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbl_result" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_chk" runat="server" OnClick="btn_chk_Click" Text="Check" Width="223px" />
        </p>
</asp:Content>
