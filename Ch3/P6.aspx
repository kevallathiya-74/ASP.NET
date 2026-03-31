<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P6.aspx.cs" Inherits="_230801347.Ch_3.P6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .mainBox {
            width: 600px;
            margin: 20px auto;
            border: 10px solid #0aa;
            box-shadow: inset 0 0 0 3px blue;
            padding: 25px;
            font-family: Arial;
        }

        .title {
            text-align: center;
            color: red;
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .row {
            margin-bottom: 10px;
        }

        .lbl {
            color: #c00;
            font-weight: bold;
            display: block;
            margin-bottom: 4px;
            font-size: 18px;
        }

        .txt {
            width: 98%;
            height: 30px;
            border: 1px solid #ff0066;
            padding-left: 6px;
        }

        .txtArea {
            width: 99%;
            height: 70px;
            border: 1px solid #ff0066;
            resize: none;
        }

        .ddl {
            width: 100%;
            height: 30px;
            border: 1px solid #ff0066;
        }

        .errorMsg {
            vertical-align: top;
        }

        .btn {
            background: #ff0066;
            color: white;
            border: none;
            padding: 8px 20px;
            margin-top: 10px;
        }

        .inline {
            display: flex;
            gap: 10px;
            align-items: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mainBox">

        <div class="title">STUDENT REGISTRATION FORM</div>

        <!-- First Name -->
        <div class="row">
            <div class="lbl">First Name</div>
            <asp:TextBox ID="txtFname" runat="server"
                CssClass="txt" placeholder="Enter First Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid1" runat="server" ControlToValidate="txtFname" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
        </div>

        <!-- Last Name -->
        <div class="row">
            <div class="lbl">Last Name</div>
            <asp:TextBox ID="txtLname" runat="server"
                CssClass="txt" placeholder="Enter Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid2" runat="server" ControlToValidate="txtLname" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
        </div>

        <!-- Gender -->
        <div class="row">
            <div class="lbl">Gender</div>
            <div class="inline">
                <asp:RadioButton ID="rbMale" runat="server" GroupName="g" Text="Male" Font-Size="Medium" />
                <asp:RadioButton ID="rbFemale" runat="server" GroupName="g" Text="Female" Font-Size="Medium" />
            </div>
        </div>

        <!-- Age -->
        <div class="row">
            <div class="lbl">Age</div>
            <asp:TextBox ID="txtAge" runat="server"
                CssClass="txt" placeholder="Enter your age"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid3" runat="server" ControlToValidate="txtAge" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
        </div>

        <!-- DOB -->
        <div class="row">
            <div class="lbl">Date of Birth</div>
            <asp:TextBox ID="txtDob" runat="server"
                CssClass="txt" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid4" runat="server" ControlToValidate="txtDob" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*DOB is not valid" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^\d{2}[-/]\d{2}[-/]\d{4}$" ValidationGroup="Valid7"></asp:RegularExpressionValidator>
        </div>

        <!-- Email -->
        <div class="row">
            <div class="lbl">Email Address</div>
            <asp:TextBox ID="txtEmail" runat="server"
                CssClass="txt" placeholder="Enter your email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid5" runat="server" ControlToValidate="txtEmail" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Email is not valid" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Valid7"></asp:RegularExpressionValidator>
        </div>

        <!-- Password -->
        <div class="row">
            <div class="lbl">Password</div>
            <asp:TextBox ID="txtPass" runat="server"
                CssClass="txt" TextMode="Password"
                placeholder="Enter password min 8 characters"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid6" runat="server" ControlToValidate="txtPass" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
        </div>

        <!-- Confirm Password -->
        <div class="row">
            <div class="lbl">Confirm Password</div>
            <asp:TextBox ID="txtCpass" runat="server"
                CssClass="txt" TextMode="Password"
                placeholder="Confirm password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid7" runat="server" ControlToValidate="txtCpass" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCpass" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Password not matched" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:CompareValidator>
        </div>

        <!-- Phone -->
        <div class="row">
            <div class="lbl">Phone Number</div>
            <div class="inline">
                <asp:DropDownList ID="ddlCode" runat="server" CssClass="ddl" Style="width: 80px">
                    <asp:ListItem>+91</asp:ListItem>
                    <asp:ListItem>+1</asp:ListItem>
                </asp:DropDownList>

                <asp:TextBox ID="txtPhone" runat="server"
                    CssClass="txt" placeholder="Enter your phone number"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="requiredValid8" runat="server" ControlToValidate="txtPhone" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Phone number is not valid" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\d{10}" ValidationGroup="Valid7"></asp:RegularExpressionValidator>
        </div>

        <!-- Address -->
        <div class="row">
            <div class="lbl">Address</div>
            <asp:TextBox ID="txtAddress" runat="server"
                CssClass="txtArea" TextMode="MultiLine"
                placeholder="Enter your address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid9" runat="server" ControlToValidate="txtAddress" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
        </div>

        <!-- State -->
        <div class="row">
            <div class="lbl">State</div>
            <asp:DropDownList ID="ddlState" runat="server" CssClass="ddl">
                <asp:ListItem>-Select your state-</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Pin -->
        <div class="row">
            <div class="lbl">Pin Code</div>
            <asp:TextBox ID="txtPin" runat="server"
                CssClass="txt" placeholder="Enter your pin code"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredValid10" runat="server" ControlToValidate="txtPin" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Required field" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationGroup="Valid7"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPin" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*Pin is not valid" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\d{6}" ValidationGroup="Valid7"></asp:RegularExpressionValidator>
        </div>

        <!-- Hobbies -->
        <div class="row">
            <div class="lbl">Hobbies</div>
            <div class="inline">
                <asp:CheckBox ID="c1" runat="server" Text="Music" Font-Size="Medium" />
                <asp:CheckBox ID="c2" runat="server" Text="Movies" Font-Size="Medium" />
                <asp:CheckBox ID="c3" runat="server" Text="Sports" Font-Size="Medium" />
                <asp:CheckBox ID="c4" runat="server" Text="Travel" Font-Size="Medium" />
            </div>
        </div>

        <!-- Photo -->
        <div class="row">
            <div class="lbl">Upload Photo</div>
            <asp:FileUpload ID="fu" runat="server" />
            <div style="color: red; font-size: 12px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" Text="*Max size 100kb"></asp:Label>
            </div>
        </div>

        <!-- Button -->
        <div class="row">
            <asp:Button ID="btnSubmit" runat="server"
                Text="Submit" CssClass="btn" ValidationGroup="Valid7" />
        </div>

    </div>

</asp:Content>
