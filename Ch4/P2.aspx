<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P2.aspx.cs" Inherits="_230801347.Ch4.P2" %>

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

        .status {
            margin-bottom: 14px;
            text-align: center;
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

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btnRegister" ValidationGroup="Valid2" OnClick="btnRegister_Click" />

            <br />

            <div class="status">
                <asp:Label ID="lbl_status" runat="server"
                    CssClass="lbl" Font-Size="Medium"></asp:Label>
            </div>
        </div>
    </div>

    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataKeyNames="id" EmptyDataText="No data available" Font-Size="Small" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="376px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" Wrap="True" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowSelectButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataRowStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <br />

    <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" BackColor="Aqua" BorderColor="Blue" BorderWidth="3px">
        <FooterStyle BackColor="Blue" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Blue" BorderWidth="3px" />
        <FooterTemplate></FooterTemplate>
        <HeaderStyle BackColor="Blue" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Blue" BorderWidth="3px" />
        <HeaderTemplate>
            Table P2
        </HeaderTemplate>
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Century Gothic" Font-Size="Large" ForeColor="Blue" />
        <ItemTemplate>

            <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" SkinID="row" Width="75px">
                        <asp:Label ID="Label8" runat="server" Text="Id : "></asp:Label>
                        &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
                        &nbsp;<asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="300px">
                        <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="250px">
                        <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="150px">
                        <asp:Label ID="Label6" runat="server" Text="Gender : "></asp:Label>
                        &nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label10" runat="server" Text="Language : "></asp:Label>
                        &nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("language") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="180px">
                        <asp:Label ID="Label12" runat="server" Text="Zipcode : "></asp:Label>
                        &nbsp;<asp:Label ID="Label13" runat="server" Text='<%# Eval("zipcode") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label14" runat="server" Text="About : "></asp:Label>
                        &nbsp;<asp:Label ID="Label15" runat="server" Text='<%# Eval("about") %>'></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </ItemTemplate>
    </asp:DataList>

    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <FooterTemplate></FooterTemplate>
        <HeaderTemplate>
            Table P2
        </HeaderTemplate>
        <ItemTemplate>

            <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" SkinID="row" Width="75px">
                        <asp:Label ID="Label8" runat="server" Text="Id : "></asp:Label>
                        &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
                        &nbsp;<asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="300px">
                        <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="250px">
                        <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="150px">
                        <asp:Label ID="Label6" runat="server" Text="Gender : "></asp:Label>
                        &nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label10" runat="server" Text="Language : "></asp:Label>
                        &nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("language") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="180px">
                        <asp:Label ID="Label12" runat="server" Text="Zipcode : "></asp:Label>
                        &nbsp;<asp:Label ID="Label13" runat="server" Text='<%# Eval("zipcode") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label14" runat="server" Text="About : "></asp:Label>
                        &nbsp;<asp:Label ID="Label15" runat="server" Text='<%# Eval("about") %>'></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
