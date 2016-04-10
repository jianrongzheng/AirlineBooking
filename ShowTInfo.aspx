<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowTInfo.aspx.cs" Inherits="ShowTInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="right" height="25" width="30%">
                Route: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="txtname" runat="server" ReadOnly="True" Width="200px" 
                    ontextchanged="txtname_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Type of route: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="typeName" runat="server" ReadOnly="True" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" style="height: 25px" width="30%">
                From: </td>
            <td align="left" style="width: 691px; height: 25px" width="*">
                <asp:TextBox ID="StartT" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                To: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="ET" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Departure date: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="STime" runat="server" onfocus="getDateString(this,oCalendarChs)"
                    ReadOnly="True" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Price: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="DanJia" runat="server" onfocus="getDateString(this,oCalendarChs)"
                    ReadOnly="True" Width="76px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Departure time: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="ShiJian" runat="server" onfocus="getDateString(this,oCalendarChs)"
                    ReadOnly="True" Width="76px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" height="25" width="30%">
                Description: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="txtds" runat="server" Height="166px" ReadOnly="True" TextMode="MultiLine"
                    Width="534px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" height="25">
                Order online</td>
        </tr>
              <tr>
            <td align="right" height="25" width="30%">
                Quantity: </td>
            <td align="left" height="25" style="width: 691px" width="*">
                <asp:TextBox ID="TextBox1" runat="server" onfocus="getDateString(this,oCalendarChs)" Width="76px">1</asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 25px">
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0000C0" OnClick="LinkButton1_Click">Order Now!</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>

