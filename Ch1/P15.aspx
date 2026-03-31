<%@ Page Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P15.aspx.cs" Inherits="_230801347.Ch_1.P15" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
            <asp:Label ID="Label2" runat="server" Text="1 - Sunday, 2 - Monday, 3 - Tuesday, 4 - Wednesday, 5 - Thursday, 6 - Friday, 7 - Saturnday"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter choice : "></asp:Label>
&nbsp;<asp:TextBox ID="txt_choice" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="Confirm" Width="288px" />
            <br />
        </div>
</asp:Content>
