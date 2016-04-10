<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyMyInfo.aspx.cs" Inherits="ModifyMyInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="right" height="25" width="30%">
                LoginID: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtMemberName" runat="server" Width="200px" 
                    ontextchanged="txtMemberName_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMemberName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #555555">
            <td align="right" height="25" width="30%">
                Name: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtMemberTrueName" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Title: </td>
            <td align="left" height="25" width="*">
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Password: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtMemberPWD" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMemberPWD"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #555555">
            <td align="right" height="25" width="30%">
                Telephone: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtMemberPhone" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                E-mail: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtMemberEmail" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMemberEmail"
                    ErrorMessage="Please enter a vaild email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr style="color: #555555">
            <td align="right" height="25" width="30%">
                Address: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtMemberAddress" runat="server" Width="200px" 
                    ontextchanged="txtMemberAddress_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Postcode: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtMemberPostCode" runat="server" Width="97px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td colspan="2" height="25">
                <div align="center">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Modify" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

