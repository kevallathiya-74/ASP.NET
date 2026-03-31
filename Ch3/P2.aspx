<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P2.aspx.cs" Inherits="_230801347.Ch_3.P2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: #f2f2f2;
            font-family: Arial;
        }

        .form-wrapper {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        .form-card {
            background: #7a2042;
            width: 380px;
            padding: 25px;
            border-radius: 6px;
            color: white;
        }

        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 12px;
        }

            .form-row label {
                width: 110px;
                font-size: 14px;
            }

        .input-area {
            width: 100%;
            display: flex;
            flex-direction: column;
        }

        .txtBox {
            width: 100%;
            height: 28px;
            border: none;
            padding: 4px 6px;
            font-size: 13px;
        }

        .txtArea {
            width: 100%;
            height: 60px;
            resize: none;
            border: none;
            padding: 6px;
            font-size: 13px;
        }

        .radioGroup {
            width: 115%;
            font-size: 13px;
        }

        .ddl {
            width: 100%;
            height: 28px;
            border: none;
            font-size: 13px;
        }

        .btnRegister {
            width: 100%;
            background: white;
            color: #333;
            border: none;
            padding: 10px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 15px;
            border-radius: 4px;
        }

            .btnRegister:hover {
                background: #f0f0f0;
            }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-wrapper">
        <div class="form-card">

            <div class="form-row">
                <label>Name:</label>
                <div class="input-area">
                    <asp:TextBox ID="txtName" runat="server" CssClass="txtBox" Placeholder="your name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredValid1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid2"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-row">
                <label>Email:</label>
                <div class="input-area">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="txtBox" Placeholder="your email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Email must be in appropriate format" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="requiredValid2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid2"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-row">
                <label>Password:</label>
                <div class="input-area">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="txtBox" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*Min 8 chars contains 1 uppercase, 1 lowercase &amp; 1 number" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" ValidationGroup="Valid2"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="requiredValid3" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid2"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-row">
                <label>Phone Number:</label>
                <div class="input-area">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="txtBox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ErrorMessage="*Must be start with country code (+91) and contains 10 number only" Font-Bold="True" Font-Size="Small" ControlToValidate="txtPhone" ForeColor="#FF3300" ValidationExpression="^\+91\d{10}$" ValidationGroup="Valid2"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="requiredValid4" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid2"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-row">
                <label>Gender:</label>
                <div class="radioGroup">
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="gender" Text="Male" />
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="Female" />
                    <asp:RadioButton ID="rbOther" runat="server" GroupName="gender" Text="Other" />
                </div>
            </div>

            <div class="form-row">
                <label>language:</label>
                <div class="input-area">
                    <asp:DropDownList ID="ddlLanguage" runat="server" CssClass="ddl">
                        <asp:ListItem>Select language</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-row">
                <label>Zip Code:</label>
                <div class="input-area">
                    <asp:TextBox ID="txtZip" runat="server" CssClass="txtBox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtZip" ErrorMessage="*ZipCode must be 6 digits" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="\d{6}" Display="Dynamic" Font-Size="Small" ValidationGroup="Valid2"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="requiredValid5" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid2"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-row">
                <label>About:</label>
                <div class="input-area">
                    <asp:TextBox ID="txtAbout" runat="server" CssClass="txtArea"
                        TextMode="MultiLine" Placeholder="Write about yourself..."></asp:TextBox>
                </div>
            </div>

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btnRegister" ValidationGroup="Valid2" />

        </div>
    </div>

</asp:Content>