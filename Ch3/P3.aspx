<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P3.aspx.cs" Inherits="_230801347.Ch_3.P3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-box {
            width: 350px;
            border: 1px solid #ccc;
            padding: 30px;
            margin: 40px auto;
            background: #fff;
        }

        .row {
            display: flex;
            align-items: center;
            margin-bottom: 18px;
        }

            .row label {
                width: 160px;
                font-size: 14px;
            }

        .txt {
            width: 180px;
            height: 22px;
            border: 1px solid #7aa0c4;
        }

        .input-field {
            display: flex;
            flex-direction: column;
        }

        .btnRow {
            text-align: center;
            margin-top: 25px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-box">

        <div class="row">
            <label>Enter your name:</label>
            <div class="input-field">
                <asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredValid1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid3"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <label>Enter Password:</label>
            <div class="input-field">
                <asp:TextBox ID="txtPassword" runat="server"
                    CssClass="txt" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredValid2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid3"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <label>Confirm Password:</label>
            <div class="input-field">
                <asp:TextBox ID="txtConfirm" runat="server"
                    CssClass="txt" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ErrorMessage="*Password not matched" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid3" Display="Dynamic"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="requiredValid3" runat="server" ControlToValidate="txtConfirm" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid3"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row">
            <label>Enter your Age:</label>
            <div class="input-field">
                <asp:TextBox ID="txtAge" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="*Age must be 18+" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" MaximumValue="100" MinimumValue="18" Type="Integer" ValidationGroup="Valid3"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="requiredValid4" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid3"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="btnRow">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="Valid3" />
        </div>

    </div>

</asp:Content>
