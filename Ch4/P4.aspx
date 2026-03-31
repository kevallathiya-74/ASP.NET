<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P4.aspx.cs" Inherits="_230801347.Ch4.P4" %>

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
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDob" CssClass="errorMsg" Display="Dynamic" ErrorMessage="*DOB is not valid" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^\d{4}-\d{2}-\d{2}$" ValidationGroup="Valid7"></asp:RegularExpressionValidator>
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
                <asp:CheckBoxList ID="chk_hobby" runat="server" RepeatDirection="Horizontal" Font-Size="Medium">
                    <asp:ListItem>Music</asp:ListItem>
                    <asp:ListItem>Movies</asp:ListItem>
                    <asp:ListItem>Sports</asp:ListItem>
                    <asp:ListItem>Travel</asp:ListItem>
                </asp:CheckBoxList>
            </div>
        </div>

        <!-- Photo -->
        <div class="row">
            <div class="lbl">Upload Photo</div>
            <asp:FileUpload ID="fileUpload" runat="server" />
            <div style="color: red; font-size: 12px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" Text="*Max size 100kb"></asp:Label>
            </div>
        </div>

        <!-- Button -->
        <div class="row">
            <asp:Button ID="btnSubmit" runat="server"
                Text="Submit" CssClass="btn" ValidationGroup="Valid7" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lbl_status" runat="server" Font-Size="Medium"></asp:Label>
        </div>

    </div>

    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" EmptyDataText="No data found" Font-Size="Medium">
        <AlternatingRowStyle BackColor="Gainsboro" />
        <Columns>
            <asp:CommandField DeleteImageUrl="~/Extra/Image/Delete.png" ShowDeleteButton="True" />
            <asp:CommandField ShowSelectButton="True" />
            <asp:CommandField ShowEditButton="True" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
        </Columns>
        <EmptyDataRowStyle Font-Size="Medium" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

    <br />

    <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" BackColor="Aqua" BorderColor="Blue" BorderWidth="3px">
        <FooterStyle BackColor="Blue" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Blue" BorderWidth="3px" />
        <FooterTemplate></FooterTemplate>
        <HeaderStyle BackColor="Blue" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Blue" BorderWidth="3px" />
        <HeaderTemplate>
            Table P4
        </HeaderTemplate>
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Century Gothic" Font-Size="Large" ForeColor="Blue" />
        <ItemTemplate>

            <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" SkinID="row" Width="50px">
                        <asp:Label ID="Label8" runat="server" Text="Id" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label1" runat="server" Text="Fname" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label10" runat="server" Text="Lname" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="150px">
                        <asp:Label ID="Label12" runat="server" Text="Gender" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="100px">
                        <asp:Label ID="Label6" runat="server" Text="Age" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="100px">
                        <asp:Label ID="Label14" runat="server" Text="Date" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="300px">
                        <asp:Label ID="Label2" runat="server" Text="Email" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label4" runat="server" Text="Password" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label16" runat="server" Text="Contact" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label18" runat="server" Text="Address" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label20" runat="server" Text="State" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label22" runat="server" Text="Pincode" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label24" runat="server" Text="Hobbies" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label25" runat="server" Text='<%# Eval("hobbies") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label26" runat="server" Text="Photo" SkinID="title"></asp:Label>
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' Height="100px" Width="100px" />
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </ItemTemplate>
    </asp:DataList>

    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <FooterTemplate></FooterTemplate>
        <HeaderTemplate>
            Table P4
        </HeaderTemplate>
        <ItemTemplate>

            <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" SkinID="row" Width="50px">
                        <asp:Label ID="Label8" runat="server" Text="Id" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label1" runat="server" Text="Fname" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label10" runat="server" Text="Lname" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="150px">
                        <asp:Label ID="Label12" runat="server" Text="Gender" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="100px">
                        <asp:Label ID="Label6" runat="server" Text="Age" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="100px">
                        <asp:Label ID="Label14" runat="server" Text="Date" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="300px">
                        <asp:Label ID="Label2" runat="server" Text="Email" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label4" runat="server" Text="Password" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label16" runat="server" Text="Contact" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label18" runat="server" Text="Address" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label20" runat="server" Text="State" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label22" runat="server" Text="Pincode" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label24" runat="server" Text="Hobbies" SkinID="title"></asp:Label>
                        <br />
                        <asp:Label ID="Label25" runat="server" Text='<%# Eval("hobbies") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label26" runat="server" Text="Photo" SkinID="title"></asp:Label>
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' Height="100px" Width="100px" />
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
