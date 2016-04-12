<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TInfoManger.aspx.cs" Inherits="Admin_TInfoManger" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gvTInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvFilms_PageIndexChanging"
        OnRowDeleting="gvFilms_RowDeleting" Width="100%">
        <PagerSettings FirstPageText="FirstPage" LastPageText="LastPage" Mode="NextPreviousFirstLast"
            NextPageText=">" PageButtonCount="12" PreviousPageText="<" />
        <RowStyle HorizontalAlign="Left" />
        <Columns>
            <asp:TemplateField HeaderText="Airline name">
                <ItemTemplate>
                    <asp:Label ID="name" runat="server" Text='<%# Bind("name") %>' Width="137px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type of route">
                <ItemTemplate>
                    <asp:Label ID="TypeName" runat="server" Text='<%# Bind("TypeName") %>' Width="65px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Form">
                <ItemTemplate>
                    <asp:Label ID="StartT" runat="server" Text='<%# Bind("StartT") %>' Width="61px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="To">
                <ItemTemplate>
                    <asp:Label ID="ET" runat="server" Text='<%# Bind("ET") %>' Width="80px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Departure date">
                <ItemTemplate>
                    <asp:Label ID="STime" runat="server" Text='<%# Bind("STime") %>' Width="80px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
       
            
            <asp:TemplateField HeaderText="Modify">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ModifyTInfo.aspx?id="+Eval("id") %>'
                        Text="Modify" Width="75px"></asp:HyperLink>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="30px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                        Text="Delete" Width="46px"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerTemplate>
            <table border="0" width="100%">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>"> FirstPage </asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                            CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>"> < </asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"> > </asp:LinkButton>
                        <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"> LastPage </asp:LinkButton>
                        Total: 
                        <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>
                        Current: 
                        <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>
                    </td>
                    <td align="right" width="20%">
                    </td>
                </tr>
            </table>
        </PagerTemplate>
        <HeaderStyle BackColor="#F6F6F6" />
    </asp:GridView>
    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

