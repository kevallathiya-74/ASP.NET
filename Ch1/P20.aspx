<%@ Page Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P20.aspx.cs" Inherits="_230801347.Ch_1.P20" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
            <asp:Label ID="Label1" runat="server" Text="Enter value 1 :  "></asp:Label>
            <asp:TextBox ID="txt_val1" runat="server" Width="170px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter value 2 :  "></asp:Label>
            <asp:TextBox ID="txt_val2" runat="server" Width="170px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Enter choice :  "></asp:Label>
            <asp:DropDownList ID="drd_ch" runat="server" Height="19px" style="margin-left: 7px" Width="170px">
                <asp:ListItem>1 - Addition</asp:ListItem>
                <asp:ListItem>2 - Subtraction</asp:ListItem>
                <asp:ListItem>3 - Multiplication</asp:ListItem>
                <asp:ListItem>4 - Division</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lbl_ans" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_calc" runat="server" OnClick="btn_calc_Click" Text="Calculate" Width="297px" />
        </div>
</asp:Content>
