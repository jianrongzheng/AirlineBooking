<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="right" height="25" width="30%">
                Log in ID:</td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMemberName" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMemberName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Name:</td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMemberTrueName" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Title:</td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Password:</td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMemberPWD" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMemberPWD"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Telephone:</td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMemberPhone" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                E-mail: </td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMemberEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMemberEmail"
                    ErrorMessage="Please enter a vaild email address!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Address:</td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMemberAddress" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Postcode:</td>
            <td align="left" height="25" width="*">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMemberPostCode" runat="server" Width="97px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="25">
                <div align="center">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" 
                        Text="Create an account" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

