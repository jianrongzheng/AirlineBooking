<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchList.aspx.cs" Inherits="SearchList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="left" style="width: 100%">
                <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td align="left" style="width: 80%">
                                    <%#Eval("typeName")%>
                                    <a href='ShowTInfo.aspx?id=<%#Eval("id")%>'>
                                        <%#Eval("Name")%>
                                    </a>
                                </td>
                                <td align="left" style="width: 20%">
                                    Date: [<%#Eval("STime")%>]
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%;
                height: 38px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; height: 8px">
                <img src="images/middle_xwrd_bg3.gif" style="width: 745px; height: 5px" /></td>
        </tr>
    </table>
</asp:Content>

