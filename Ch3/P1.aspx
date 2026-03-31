<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true"
    CodeBehind="P1.aspx.cs" Inherits="_230801347.Ch_3.P1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #body {
            background: #eaf4ff;
            font-family: Arial;
        }

        .mainBox {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 30px 0;
        }

        .containerBox {
            width: 650px;
        }

        /* Heading */
        .heading {
            width: 100%;
            background: white;
            border-radius: 50px;
            height: 70px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 38px;
            font-weight: bold;
            color: #0b2d70;
            box-shadow: 0 8px 20px rgba(0,0,0,0.08);
            margin-bottom: 25px;
        }

        /* Card */
        .cardBox {
            background: white;
            border-radius: 18px;
            padding: 25px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.10);
            position: relative;
        }

        /* Top circles (Mac window style) */
        .dots {
            display: flex;
            gap: 8px;
            margin-bottom: 20px;
        }

        .dot {
            width: 12px;
            height: 12px;
            border-radius: 50%;
        }

        .red {
            background: #ff5f57;
        }

        .yellow {
            background: #febc2e;
        }

        .green {
            background: #28c840;
        }

        /* Labels */
        .lbl {
            font-size: 13px;
            color: #444;
            font-weight: bold;
            margin: 8px 0 6px;
            display: block;
        }

        /* Input box */
        .txtBoxS {
            width: 90%;
            height: 38px;
            border: none;
            outline: none;
            border-radius: 10px;
            background: #ededed;
            padding: 0 12px;
            font-size: 14px;
        }

        .txtBoxB {
            width: 96%;
            height: 38px;
            border: none;
            outline: none;
            border-radius: 10px;
            background: #ededed;
            padding: 0 12px;
            font-size: 14px;
        }

        /* One column layout */
        .row1 {
            gap: 40px;
        }

        /* Two column layout */
        .row2 {
            display: flex;
            gap: 40px;
        }

        .col {
            flex: 1;
        }

        /* Buttons */
        .btnArea {
            display: flex;
            justify-content: flex-end;
            gap: 12px;
            margin-top: 20px;
        }

        .btnCancel {
            background: white;
            border: 2px solid #2f6bff;
            color: #2f6bff;
            padding: 8px 22px;
            border-radius: 25px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
        }

        .btnSave {
            background: #2f6bff;
            border: none;
            color: white;
            padding: 9px 26px;
            border-radius: 25px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
        }

        .btnCancel:hover {
            background: #f2f7ff;
        }

        .btnSave:hover {
            background: #1f56d6;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainBox">
        <div class="containerBox">
            <div class="heading">Webforms</div>

            <div class="cardBox">
                <div class="dots">
                    <div class="dot red"></div>
                    <div class="dot yellow"></div>
                    <div class="dot green"></div>
                </div>

                <div class="row2">
                    <div class="col">
                        <label class="lbl">First Name</label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="txtBoxS"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requiredValid1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*Must be filled" ForeColor="#FF3300" ValidationGroup="Valid1" Display="Dynamic" Font-Size="Small" Font-Bold="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col">
                        <label class="lbl">Last Name</label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="txtBoxS"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requiredValid2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*Must be filled" ForeColor="#FF3300" ValidationGroup="Valid1" Display="Dynamic" Font-Size="Small" Font-Bold="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row1">
                    <label class="lbl">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="txtBoxB"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email must be in appropriate format" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Font-Size="Small" ValidationGroup="Valid1"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="requiredValid5" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
                </div>

                <div class="row1">
                    <label class="lbl">Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="txtBoxB"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="requiredValid3" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
                </div>

                <div class="row2">
                    <div class="col">
                        <label class="lbl">City</label>
                        <asp:TextBox ID="txtCity" runat="server" CssClass="txtBoxS"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="requiredValid4" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col">
                        <label class="lbl">ZipCode</label>
                        <asp:TextBox ID="txtZip" runat="server" CssClass="txtBoxS"></asp:TextBox>
                        <label class="lbl">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtZip" ErrorMessage="*ZipCode must be 6 digits" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="\d{6}" Display="Dynamic" Font-Size="Small" ValidationGroup="Valid1"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="requiredValid6" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="*Must be filled" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid1"></asp:RequiredFieldValidator>
                        </label>
                    </div>
                </div>

                <div class="btnArea">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btnCancel" />
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btnSave" ValidationGroup="Valid1" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
