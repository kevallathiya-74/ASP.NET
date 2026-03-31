<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P13.aspx.cs" Inherits="_230801347.Ch_2.P13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .link_button {
            text-align: center;
            margin-top: 20px;
        }
    </style>
    <asp:Label ID="lbl_txt" runat="server" Text="Name : "></asp:Label>
    <asp:TextBox SkinID="textbox" ID="txt_nm" runat="server" />
    <br />
    <br />
    <asp:Button SkinID="btn1" runat="server" Text="Submit" Width="89px" Height="50px" OnClick="btn_submit_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ibtn_submit" runat="server" Text="Submit" Width="89px" ImageUrl="~/Extra/Image/Submit.png" ImageAlign="Middle" OnClick="ibtn_submit_Click" />
    <br />
    <asp:LinkButton ID="lbtn_return" CssClass="link_button" runat="server" Text="Back to Program 1" Width="292px" PostBackUrl="~/Ch2/P1.aspx" />
    <br />
    <br />
    <asp:Label ID="lbl_nm" runat="server"></asp:Label>
    <br />
    <asp:Literal ID="ltr_nm" runat="server"></asp:Literal>
    <br />
</asp:Content>
