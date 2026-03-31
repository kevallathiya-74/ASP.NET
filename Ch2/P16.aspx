<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P16.aspx.cs" Inherits="_230801347.Ch_2.P16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_msg" runat="server"></asp:Label>
    <br />
    <asp:FileUpload ID="file_select" runat="server" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button SkinID="btn1" runat="server" Text="Upload" OnClick="btn_upload_Click" />
    <br />
    <br />
    <asp:Image ID="img_preview" runat="server" Height="150px" Width="150px" />
    <br />
    <br />
    <asp:DropDownList ID="drp_saveImg" runat="server">
        <asp:ListItem>Select image for preview</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;
    <asp:Button SkinID="btn2" runat="server" OnClick="btn_preview_Click" Text="Preview" />
    &nbsp;
</asp:Content>
