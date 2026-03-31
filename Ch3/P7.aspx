<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P7.aspx.cs" Inherits="_230801347.Ch3.P7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .box {
            width: 420px;
            margin: 25px auto;
            border: 1px solid #aaa;
            padding: 20px;
            font-family: Arial;
        }

        .row {
            margin-bottom: 10px;
        }

        .txt {
            width: 100%;
            height: 28px;
            padding-left: 6px;
        }

        .btnArea {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 8px;
            margin-top: 12px;
        }

        .btn {
            padding: 6px;
            background: #1f6bdb;
            color: white;
            border: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <!-- TextBox 1 -->
        <div class="row">
            <asp:TextBox ID="txtUsernm" runat="server" CssClass="txt"
                Placeholder="Username"></asp:TextBox>
        </div>

        <!-- TextBox 2 -->
        <div class="row">
            <asp:TextBox ID="txtPass" runat="server" CssClass="txt"
                Placeholder="Password"></asp:TextBox>
            <br />
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </div>

        <!-- 6 Buttons -->
        <div class="btnArea">
            <asp:Button ID="btnSession" runat="server" Text="Session" CssClass="btn" OnClick="btnSession_Click" />
            <asp:Button ID="btnCookie" runat="server" Text="Cookie" CssClass="btn" OnClick="btnCookie_Click" />
            <asp:Button ID="btnViewState" runat="server" Text="View State" CssClass="btn" OnClick="btnViewState_Click" />
            <asp:Button ID="btnViewStateRestore" runat="server" Text="ViewState Restore" CssClass="btn" OnClick="btnViewStateRestore_Click" />
            <asp:Button ID="btnHiddenField" runat="server" Text="Hidden Field" CssClass="btn" OnClick="btnHiddenField_Click" />
            <asp:Button ID="btnQueryString" runat="server" Text="Query String" CssClass="btn" OnClick="btnQueryString_Click" />
            <asp:Button ID="btnCache" runat="server" Text="Cache" CssClass="btn" OnClick="btnCache_Click" />
        </div>

        <!-- RESULT LABEL -->
        <div class="row" style="margin-top: 15px; border-top: 1px solid #ccc; padding-top: 10px;">
            <asp:Label ID="lblResult" runat="server"
                Text="Stored values will appear here..."
                Style="font-weight: bold; color: #333;">
            </asp:Label>
        </div>
    </div>
</asp:Content>
