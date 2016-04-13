<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="showPost.aspx.cs" Inherits="Admin_showPost" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="right" height="25" width="30%">
                Topic: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txttitle" runat="server" ReadOnly="True" Width="267px" 
                    Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="height: 25px" width="30%">
                Name: </td>
            <td align="left" style="height: 25px" width="*">
                <asp:TextBox ID="txtname" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                E-mail:</td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtemail" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Telephone: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txthtp" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Time: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtTime" runat="server" ReadOnly="True" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Text: </td>
            <td align="left" height="25" width="*">
                <asp:TextBox ID="txtneirong" runat="server" Height="87px" ReadOnly="True" TextMode="MultiLine"
                    Width="432px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="25">
                <div align="center">
                    &nbsp;</div>
            </td>
        </tr>
    </table>
</asp:Content>

