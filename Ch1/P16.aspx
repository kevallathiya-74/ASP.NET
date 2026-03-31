<%@ Page Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P16.aspx.cs" Inherits="_230801347.Ch_1.P16" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Label ID="lbl_1" runat="server" Text="Enter value 1 :"></asp:Label>
&nbsp;<asp:TextBox ID="txt_val1" runat="server" Width="162px"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_2" runat="server" Text="Enter value 2 :"></asp:Label>
&nbsp;<asp:TextBox ID="txt_val2" runat="server" Width="162px"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_3" runat="server" Text="Enter value 3 :" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="txt_val3" runat="server" Width="162px" Visible="False"></asp:TextBox>
        &nbsp;<br />
        <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="Add" Width="276px" />
        <br />
        <br />
        <asp:Label ID="lbl_4" runat="server" Text="Sum is : "></asp:Label>
&nbsp;<asp:Label ID="lbl_ans" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btn_sum" runat="server" OnClick="btn_sum_Click" Text="Sum" Width="269px" />
</asp:Content>
