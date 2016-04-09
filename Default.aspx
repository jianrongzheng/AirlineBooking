<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0"
        height="300" width="776">
        <tr>
            <td align="middle" background="images/leftbg.gif" valign="top" width="181">
                <table background="images/lefttitle.gif" border="0" cellpadding="0" cellspacing="0"
                    height="31" style="color: #0000ff; " width="181">
                    <tr>
                        <td width="20">
                            &nbsp;</td>
                        <td style="font-size: medium">
                            <b>Log in area:</b></td>
                    </tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="8" height="90" width="100%">
                    <tr>
                        <td style="width: 169px" valign="top">
                            <table id="TABLE1" runat="server" cellpadding="0" cellspacing="0" height="174">
                                <tr>
                                    <td style="width: 316px; height: 90px" valign="top">
                                        <table cellpadding="0" cellspacing="0" height="123" style="width: 174px">
                                            <tr>
                                                <td style="height: 133px">
                                                    <table cellpadding="0" cellspacing="0" height="120" style="width: 175px">
                                                        <tr>
                                                            <td align="center" class="huicu" height="29" style="width: 87px">
                                                                LoginID:</td>
                                                            <td align="left" width="70">
                                                                <asp:TextBox ID="txtMName" runat="server" Width="120px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" class="huicu" style="width: 87px">
                                                                Password:</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtMPwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="2">
                                                                <a href="#"></a>
                                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                                    style="height: 26px" Text="Log in" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="2" style="height: 19px">
                                                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#00C0C0" OnClick="LinkButton1_Click">Register</asp:LinkButton>
                                                                </td>
                                                        </tr>
                                                    </table>
                                                                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table id="table2" runat="server" cellpadding="0" cellspacing="0" class="huicu" height="174"
                                visible="false">
                                <tr>
                                    <td height="16" style="width: 348px" valign="top">
                                        <table cellpadding="0" cellspacing="0" height="123" style="width: 107px">
                                            <tr>
                                                <td style="text-align: center">
                                                    <table style="width: 157px">
                                                        <tr>
                                                            <td class="huicu" style="text-align: center">
                                                                Hello! <asp:Label ID="MName" runat="server" ForeColor="#FF8000" Width="107px"></asp:Label></td>
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
                                    <td height="6" style="width: 348px">
                                    </td>
                                </tr>
                            </table>

                            <script src="images/loginform.htm"></script>

                        </td>
                    </tr>
                </table>
                <table bgcolor="#d2d2d2" border="0" cellpadding="0" cellspacing="0" height="1" width="100%">
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="color: #0000ff; text-decoration: underline" valign="top" width="12">
                &nbsp;</td>
            <td valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%" style="height: 1px">
                    <tr>
                        <td style="height: 209px">
                            <table cellpadding="0" cellspacing="0" height="34" width="100%">
                                <tr>
                                    <td bgcolor="#ffffff" style="height: 49px">
                                        <table border="0" cellpadding="0" cellspacing="0" height="160" width="100%">
                                            <tr>
                                                <td height="130" style="border-right: #d2d2d2 1px solid; border-top: #d2d2d2 1px solid;
                                                    border-left: #d2d2d2 1px solid; width: 1208px; border-bottom: #d2d2d2 1px solid"
                                                    valign="top">
                                                    <table background="images/tbg.jpg" border="0" cellpadding="0" cellspacing="0" height="26"
                                                        width="100%">
                                                        <tr>
                                                            <td align="middle" width="35" style="height: 23px">
                                                                <img height="12" src="images/sp.gif" width="5" /></td>
                                                            <td class="fontg" style="height: 23px; width: 1053px; font-weight: bold">
                                                                <p>
                                                                    Latest airline information:</p>
                                                            </td>
                                                            <td align="middle" class="fontg" width="50" style="height: 23px">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <table bgcolor="#d2d2d2" border="0" cellpadding="0" cellspacing="0" height="1" width="100%">
                                                        <tr>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table border="0" cellpadding="0" cellspacing="1" width="100%" style="height: 38px">
                                                        <tr>
                                                            <td style="padding-left: 6px; width: 645px; padding-top: 6px;" valign="top">
                                                                <asp:DataList ID="DataList1" runat="server" Width="100%" 
                                                                    onselectedindexchanged="DataList1_SelectedIndexChanged">
                                                                    <ItemTemplate>
                                                                        <table style="width: 100%">
                                                                            <tr>
                                                                                <td align="left" style="width: 60%">
                                                                                    <%#Eval("typeName")%>
                                                                                    <a href='ShowTInfo.aspx?id=<%#Eval("id")%>'>
                                                                                        <%#Eval("Name")%>
                                                                                    </a>
                                                                                </td>
                                                                                <td align="left" style="width: 40%">
                                                                                    Departure date: [<%#Eval("STime")%>]
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </ItemTemplate>
                                                                </asp:DataList></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="padding-left: 6px; width: 645px; padding-top: 6px" valign="top">
                                                                Total Page: <asp:Label ID="lblSumPage" runat="server"></asp:Label>&nbsp;&nbsp; 
                                                                Current page: <asp:Label
                                                                    ID="lblCurrentPage" runat="server"></asp:Label>&nbsp;
                                                                &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">&lt;</asp:HyperLink>
                                                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                                <asp:HyperLink ID="lnkNext" runat="server">&gt;</asp:HyperLink>
                                                                &nbsp;&nbsp;
                                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="width: 13px" valign="top">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

