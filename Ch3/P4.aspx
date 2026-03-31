<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P4.aspx.cs" Inherits="_230801347.Ch_3.P4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #body {
            background: #5fa8d3;
        }

        .login-card {
            position: relative;
            margin-top: 55px;
        }

        /* Circular container */
        .avatar-circle {
            width: 120px;
            height: 120px;
            background: #3b7dbd;
            border-radius: 50%;
            position: absolute;
            top: -55px; /* half outside */
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Image inside circle */
        .avatar-img {
            width: 90px;
            height: 90px;
        }

        .auth-wrapper {
            display: flex;
            justify-content: center;
            gap: 40px;
            padding: 40px;
        }

        .auth-card {
            width: 300px;
            background: rgba(255,255,255,0.15);
            padding: 30px 25px;
            border-radius: 10px;
            color: #fff;
        }

        .auth-title {
            text-align: center;
            font-size: 20px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .login {
            margin-top: 61px;
        }

        .auth-input {
            display: block;
            width: 93%;
            height: 34px;
            border: none;
            padding: 6px 10px;
            border-radius: 4px;
            font-size: 13px;
            margin-bottom: 0;
            line-height: 40px;
        }

        .input-field {
            width: 100%;
            margin-bottom: 10px;
        }

        .auth-btn {
            width: 100%;
            border: none;
            background: #3b7dbd;
            color: white;
            padding: 8px;
            font-size: 14px;
            border-radius: 20px;
            cursor: pointer;
            margin-top: 10px;
        }

            .auth-btn:hover {
                background: #2f6fa8;
            }

        .auth-link {
            text-align: center;
            font-size: 12px;
            margin-top: 10px;
            opacity: 0.9;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auth-wrapper">

        <!-- LOGIN -->
        <div class="auth-card login-card">

            <!-- Circular Avatar -->
            <div class="avatar-circle">
                <asp:Image ID="imgAvatar" runat="server"
                    ImageUrl="~/Extra/Image/User icon.png"
                    CssClass="avatar-img" />
            </div>

            <div class="auth-title login">LOGIN</div>

            <div class="input-field">
                <asp:RequiredFieldValidator ID="requiredValid1" runat="server" ControlToValidate="txtLoginUser" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="Valid4" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLoginUser" runat="server"
                    CssClass="auth-input" Placeholder="Username"></asp:TextBox>
            </div>

            <div class="input-field">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLoginPass" Display="Dynamic" ErrorMessage="*Min 8 chars with uppercase, lowercase & number" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" ValidationGroup="Valid4"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="requiredValid2" runat="server" ControlToValidate="txtLoginPass" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="Valid4" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLoginPass" runat="server"
                    CssClass="auth-input" TextMode="Password"
                    Placeholder="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server"
                Text="LOGIN" CssClass="auth-btn" ValidationGroup="Valid4" />

            <div class="auth-link">Forgot username / password?</div>
        </div>

        <!-- SIGN UP -->
        <div class="auth-card">
            <div class="auth-title">SIGN UP</div>

            <div class="input-field">
                <asp:RequiredFieldValidator ID="requiredValid3" runat="server" ControlToValidate="txtUser" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="Valid5" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtUser" runat="server"
                    CssClass="auth-input" Placeholder="Username"></asp:TextBox>
            </div>

            <div class="input-field">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Email must be in appropriate format" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Valid5"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="requiredValid4" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="Valid5" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtEmail" runat="server"
                    CssClass="auth-input" Placeholder="E-mail"></asp:TextBox>
            </div>

            <div class="input-field">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="*Min 8 chars with uppercase, lowercase & number" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" ValidationGroup="Valid5"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="requiredValid5" runat="server" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="Valid5" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtPass" runat="server"
                    CssClass="auth-input" TextMode="Password"
                    Placeholder="Password"></asp:TextBox>
            </div>

            <div class="input-field">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirm" ErrorMessage="*Password not matched" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid5" Display="Dynamic"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="requiredValid6" runat="server" ControlToValidate="txtConfirm" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" ForeColor="#FF3300" ValidationGroup="Valid5" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtConfirm" runat="server"
                    CssClass="auth-input" TextMode="Password"
                    Placeholder="Confirm Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnSignup" runat="server"
                Text="CREATE ACCOUNT" CssClass="auth-btn" ValidationGroup="Valid5" />

            <div class="auth-link">Already have an account? Login here</div>
        </div>

    </div>

</asp:Content>
