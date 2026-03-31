<%@ Page Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P10.aspx.cs" Inherits="_230801347.Ch_1.P10" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
            <asp:Label ID="Label1" runat="server" Text="Enter a value :"></asp:Label>
&nbsp;
            <asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbl_result" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_chk" runat="server" OnClick="btn_chk_Click" Text="Check" Width="223px" />
        </div>
</asp:Content>
