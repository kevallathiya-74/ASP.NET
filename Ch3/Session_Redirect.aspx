<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="Session_Redirect.aspx.cs" Inherits="_230801347.Ch3.P8__Session_Redirect_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .row {
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-top: 15px; padding-top: 10px;">
        <asp:Label ID="lblResult" runat="server"
            Text=""
            Style="font-weight: bold; color: #333;"></asp:Label>
    </div>
</asp:Content>
