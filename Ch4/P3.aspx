<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P3.aspx.cs" Inherits="_230801347.Ch4.P3" Theme="Design" %>

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

        .status {
            margin-bottom: 14px;
            text-align: center;
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
                Text="Register" CssClass="btn" ValidationGroup="Valid6" OnClick="btnRegister_Click" />
        </div>

        <div class="status">
            <asp:Label ID="lbl_status" runat="server"
                CssClass="lbl" Font-Size="Medium"></asp:Label>
        </div>
    </div>

    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No data available" Font-Size="Large">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowSelectButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EmptyDataRowStyle Font-Size="Larger" HorizontalAlign="Center" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>

    <br />
    <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" BackColor="Aqua" BorderColor="Blue" BorderWidth="3px">
        <FooterStyle BackColor="Blue" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Blue" BorderWidth="3px" />
        <FooterTemplate></FooterTemplate>
        <HeaderStyle BackColor="Blue" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="Blue" BorderWidth="3px" />
        <HeaderTemplate>
            Table P3
        </HeaderTemplate>
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Names="Century Gothic" Font-Size="Large" ForeColor="Blue" />
        <ItemTemplate>

            <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" SkinID="row" Width="50px">
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
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="100px">
                        <asp:Label ID="Label6" runat="server" Text="Age : "></asp:Label>
                        &nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </ItemTemplate>
    </asp:DataList>

    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <FooterTemplate></FooterTemplate>
        <HeaderTemplate>
            Table P3
        </HeaderTemplate>
        <ItemTemplate>

            <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" SkinID="row" Width="100px">
                        <asp:Label ID="Label8" runat="server" Text="Id : "></asp:Label>
                        &nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="250px">
                        <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
                        &nbsp;<asp:Label ID="lblName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="500px">
                        <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
                        &nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell runat="server" SkinID="row" Width="200px">
                        <asp:Label ID="Label6" runat="server" Text="Age : "></asp:Label>
                        &nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>