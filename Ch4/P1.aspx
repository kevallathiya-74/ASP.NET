<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P1.aspx.cs" Inherits="_230801347.Ch4.P1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
            width: 400px;
            margin: 50px auto;
            padding: 25px;
            border: 1px solid #cccccc;
            font-family: Arial, sans-serif;
            background-color: #ffffff;
        }

        .form-title {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }

        .input {
            width: 100%;
            height: 32px;
            padding: 4px 6px;
            border: 1px solid #999999;
            font-size: 14px;
        }

        .dropdown {
            width: 103%;
            height: 32px;
            padding: 4px 6px;
            border: 1px solid #999999;
            font-size: 14px;
        }

        .button-group {
            margin-top: 15px;
            text-align: center;
        }

        .btn {
            width: 80px;
            height: 32px;
            margin: 5px;
            border: 1px solid #666666;
            background-color: #f2f2f2;
            cursor: pointer;
        }

            .btn:hover {
                background-color: #e0e0e0;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <div class="form-title">Student form</div>
        <div class="form-group">
            <label class="label">Enter Roll_no</label>
            <asp:TextBox ID="txtRoll" runat="server" CssClass="input" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group">
            <label class="label">Enter Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox>
        </div>
        <div class="form-group">
            <label class="label">Select City</label>
            <asp:DropDownList ID="ddlOptions" runat="server"
                CssClass="dropdown">
                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                <asp:ListItem Text="Rajkot"></asp:ListItem>
                <asp:ListItem Text="Ahmedabad"></asp:ListItem>
                <asp:ListItem Text="Surat"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="button-group">
            <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn" OnClick="btnInsert_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" OnClick="btnDelete_Click" />
            <asp:Button ID="btnDisplay" runat="server" Text="Display" CssClass="btn" OnClick="btnDisplay_Click" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn" OnClick="btnReset_Click" />
        </div>
        <div class="button-group">
            <asp:Label ID="conState" runat="server" Font-Size="Medium"></asp:Label>
        </div>
    </div>

    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" Width="346px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
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

</asp:Content>
