<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P5.aspx.cs" Inherits="_230801347.Ch_2.P5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="link_internal" runat="server" NavigateUrl="~/Ch2/P1.aspx">Program 1 in same window</asp:HyperLink>
    <br />
    <asp:HyperLink ID="link_external" runat="server" NavigateUrl="~/Ch2/P1.aspx" Target="_blank">Program 1 in new window</asp:HyperLink>
</asp:Content>
