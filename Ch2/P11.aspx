<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P11.aspx.cs" Inherits="_230801347.Ch_2.P11" %>

<%@ Register Src="~/Extra/P11 User_Control.ascx" TagName="l_Color" TagPrefix="color" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #body {
            padding: 0 !important;
        }

        .panel {
            padding: 20px;
        }
    </style>
    <asp:Panel ID="Panel1" CssClass="panel" runat="server" Height="100%">
        <color:l_Color ID="listColor" runat="server" />
        <br />
        <br />
        <asp:Button ID="btn_select" runat="server" OnClick="btn_select_Click" Text="Select" Width="77px" />
        <br />
    </asp:Panel>
</asp:Content>
