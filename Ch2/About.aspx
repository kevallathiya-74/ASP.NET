<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="_230801347.Ch2.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    <asp:SiteMapPath ID="sitemap" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#990000" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
        <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
    </asp:SiteMapPath>
    <br />
    This is About Page.
</asp:Content>
