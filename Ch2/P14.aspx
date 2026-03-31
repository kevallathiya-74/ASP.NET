<%@ Page Title="" Language="C#" MasterPageFile="~/Extra/C2.Master" AutoEventWireup="true" CodeBehind="P14.aspx.cs" Inherits="_230801347.Ch_2.P14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Gender : "></asp:Label>
&nbsp;&nbsp;&nbsp;
    <br />
    <asp:RadioButton ID="rd_male" runat="server" GroupName="gender" Text="M" />
&nbsp;<asp:RadioButton ID="rd_female" runat="server" GroupName="gender" Text="F" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Choice : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButtonList ID="rd_choice" runat="server" CellPadding="1" CellSpacing="1" Height="26px" RepeatDirection="Horizontal">
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="Label3" runat="server" Text="Hobby : "></asp:Label>
    <br />
    <asp:CheckBox ID="chk_cricket" runat="server" Text="Cricket" />
&nbsp;<asp:CheckBox ID="chk_reading" runat="server" Text="Reading" />
&nbsp;<asp:CheckBox ID="chk_travel" runat="server" Text="Traveling" />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Qualification : "></asp:Label>
    <asp:CheckBoxList ID="chk_qualification" runat="server" CellPadding="1" CellSpacing="1" RepeatColumns="2" RepeatDirection="Horizontal">
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>BCA</asp:ListItem>
        <asp:ListItem>B.Sc.IT</asp:ListItem>
    </asp:CheckBoxList>
    <br />
    <asp:Label ID="Label5" runat="server" Text="City : "></asp:Label>
    <asp:DropDownList ID="drp_city" runat="server">
        <asp:ListItem>Rajkot</asp:ListItem>
        <asp:ListItem>Jamnagar</asp:ListItem>
        <asp:ListItem>Morbi</asp:ListItem>
        <asp:ListItem>Surat</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button skinID="btn1" runat="server" OnClick="btn_submit_Click" Text="Submit" Width="183px" />
    <br />
    <br />
    <asp:Literal ID="ltr_info" runat="server"></asp:Literal>
</asp:Content>
