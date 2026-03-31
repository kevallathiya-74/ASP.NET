<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P5.aspx.cs" Inherits="_230801347.Ch_3.P5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .box {
            width: 520px;
            margin: 30px auto;
            border: 1px solid #ccc;
            padding: 25px;
            background: #fff;
            font-family: Arial;
        }

        .title {
            text-align: center;
            font-size: 24px;
            color: #1f6bdb;
            font-weight: bold;
            width: 100%;
        }

        .subtitle {
            text-align: center;
            font-size: 13px;
            color: #666;
            margin-bottom: 20px;
        }

        .mainHr {
            text-align: center;
            width: 65%;
            justify-content: center;
            margin-block-start: 0.1em;
            margin-block-end: 0.1em;
            border: none;
            border-top: 1px solid #ccc;
        }

        .row {
            margin-bottom: 14px;
        }

        .lbl {
            font-weight: bold;
            font-size: 14px;
        }

        .txt {
            width: 100%;
            height: 30px;
            margin-top: 4px;
            border: 1px solid #aaa;
            padding-left: 6px;
        }

        hr {
            text-align: center;
            width: 102%;
            justify-content: center;
            margin-block-start: 0.5em;
            margin-block-end: 0.5em;
            border: none;
            border-top: 1px solid #ccc;
        }

        .btnArea {
            text-align: center;
            margin-top: 15px;
        }

        .btn {
            background: #1f6bdb;
            color: white;
            border: none;
            padding: 8px 22px;
            font-size: 14px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="box">

        <div class="title">User Registration Form</div>
        <hr class="mainHr" />
        <div class="subtitle">Demonstrating Validation Controls</div>

        <!-- Full Name -->
        <div class="row">
            <div class="lbl">Full Name:</div>
            <asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*This field is required" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid6"></asp:RequiredFieldValidator>
        </div>
        <hr />
        <!-- Email -->
        <div class="row">
            <div class="lbl">Email:</div>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*This field is required" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid6"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Please enter a valid email address" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid6" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <hr />
        <!-- Password -->
        <div class="row">
            <div class="lbl">Password:</div>
            <asp:TextBox ID="txtPassword" runat="server"
                CssClass="txt" TextMode="Password"></asp:TextBox>
        </div>
        <!-- Confirm Password -->
        <div class="row">
            <div class="lbl">Confirm Password:</div>
            <asp:TextBox ID="txtConfirm" runat="server"
                CssClass="txt" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid3" runat="server" ControlToValidate="txtConfirm" Display="Dynamic" ErrorMessage="*This field is required" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid6"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" Display="Dynamic" ErrorMessage="*Password does not match" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid6"></asp:CompareValidator>
        </div>
        <hr />
        <!-- Age -->
        <div class="row">
            <div class="lbl">Age:</div>
            <asp:TextBox ID="txtAge" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="*Age must be between 18 to 60" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" MaximumValue="60" MinimumValue="18" Type="Integer" ValidationGroup="Valid6"></asp:RangeValidator>
        </div>
        <hr />
        <!-- Button -->
        <div class="btnArea">
            <asp:Button ID="btnRegister" runat="server"
                Text="Register" CssClass="btn" ValidationGroup="Valid6" />
        </div>
    </div>

</asp:Content>
