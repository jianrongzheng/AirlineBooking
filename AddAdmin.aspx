<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Admin_AddAdmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff" height="30">
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" style="width: 722px">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            &nbsp; AdminID:</td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="txtName" runat="server" MaxLength="200" Width="163px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 90px; height: 24px">
                            Password: </td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="TextBox1" runat="server" MaxLength="200" TextMode="Password" Width="163px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 34px">
                            <hr />
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 15px">
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

