<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="liuyanban.aspx.cs" Inherits="liuyanban" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="right" height="25" width="30%">
                Topic：</td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txttitle" runat="server" Width="534px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttitle"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Name：</td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                E-mail：</td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtemail" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Telephone：</td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txthtp" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Text ：</td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtneirong" runat="server" Height="157px" TextMode="MultiLine" Width="646px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="25">
                <div align="center">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Submit" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

