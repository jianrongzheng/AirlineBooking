<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="8" height="90" width="100%">
        <tr>
            <td align="center" style="width: 169px" valign="top">
                <table id="TABLE1" runat="server" cellpadding="0" cellspacing="0" height="174" style="width: 758px">
                    <tr>
                        <td style="width: 947px; height: 90px" valign="top">
                            <table cellpadding="0" cellspacing="0" height="123" style="width: 174px">
                                <tr>
                                    <td style="height: 133px">
                                        <table cellpadding="0" cellspacing="0" height="120" style="width: 310px">
                                            <tr>
                                                <td align="center" class="huicu" height="29" style="width: 87px">
                                                    LoginID:</td>
                                                <td align="left" style="width: 242px">
                                                    <asp:TextBox ID="txtMName" runat="server" Width="120px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="huicu" style="width: 87px">
                                                    Password:</td>
                                                <td align="left" style="width: 242px">
                                                    <asp:TextBox ID="txtMPwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <a href="#"></a>
                                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log in" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="height: 19px">
                                                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#00C0C0" OnClick="LinkButton1_Click">Regiester</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table id="table2" runat="server" cellpadding="0" cellspacing="0" class="huicu" height="174"
                    style="width: 763px" visible="false">
                    <tr>
                        <td align="center" height="16" style="width: 869px" valign="top">
                            <table cellpadding="0" cellspacing="0" height="123" style="width: 107px">
                                <tr>
                                    <td style="text-align: center">
                                        <table style="width: 328px">
                                            <tr>
                                                <td class="huicu" style="text-align: center">
                                                    Hello!<asp:Label ID="MName" runat="server" ForeColor="#FF8000" Width="107px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="huicu" style="height: 16px; text-align: center">
                                                    <asp:LinkButton ID="lbtnLogout" runat="server" Font-Underline="False" ForeColor="Black"
                                                        OnClick="lbtnLogout_Click" Width="96px">Log out</asp:LinkButton>
                                                    <asp:HyperLink ID="hlinkEdit" runat="server" Font-Underline="False" ForeColor="Black"
                                                        NavigateUrl="ModifyMyInfo.aspx" Width="90px">更新信息</asp:HyperLink></td>
                                                <td style="height: 16px">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="6" style="width: 869px">
                        </td>
                    </tr>
                </table>

                <script src="images/loginform.htm"></script>

            </td>
        </tr>
    </table>
</asp:Content>

