<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P9.aspx.cs" Inherits="_230801347.Ch_2.P9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btn {
            background-color: green;
            color: aqua;
            border-radius: 20px;
        }

            .btn:hover {
                background-color: yellow;
                color: red;
                cursor: pointer;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Hover on it..."></asp:Label>
    <br />
    <asp:Button ID="btn_hover" CssClass="btn" runat="server" Font-Bold="True" Text="Hover me !" Width="142px" />
</asp:Content>
