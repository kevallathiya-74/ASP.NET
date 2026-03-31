<%@ Page Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P8.aspx.cs" Inherits="_230801347.Ch_1.P8" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Label ID="lbl_disc1" runat="server" Text="Enter value 1 :"></asp:Label>
&nbsp;<asp:TextBox ID="txt_val1" runat="server" Width="162px"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_disc2" runat="server" Text="Enter value 2 :"></asp:Label>
&nbsp;<asp:TextBox ID="txt_val2" runat="server" Width="162px"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_disc3" runat="server" Text="Sum is : "></asp:Label>
&nbsp;<asp:Label ID="lbl_ans" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btn_sum" runat="server" OnClick="btn_sum_Click" Text="Sum" Width="269px" />
</asp:Content>
