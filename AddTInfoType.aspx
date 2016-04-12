<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddTInfoType.aspx.cs" Inherits="Admin_AddTInfoType" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" class="ShopInfo" width="100%">
        <tr>
            <td align="center" bgcolor="#ffffff" height="30">
                &nbsp;
                <table id="Table1" border="0" cellpadding="0" cellspacing="0" style="width: 722px">
                    <tr>
                        <td style="width: 90px; height: 24px">
                            Type of route: </td>
                        <td align="left" style="width: 232px; height: 24px">
                            <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
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

