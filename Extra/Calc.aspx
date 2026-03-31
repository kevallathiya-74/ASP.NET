<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="_230801347.Extra.Calc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox runat="server" id="val1" placeholder="Enter first value"></asp:TextBox>
    <br />
    <asp:TextBox runat="server" id="val2" placeholder="Enter second value"></asp:TextBox>
    <br />
    <br />
    <asp:Button runat="server" Text="Add" Width="164px" OnClick="btn_sum_Click" ID="btn_sum" />
    <br />
    <br />
    <asp:Label runat="server" ID="lbl_ans"></asp:Label>
</asp:Content>
