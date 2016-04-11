<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>AdministratorLogin</title>
    <STYLE type=text/css>BODY {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
}
TD {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
}
</STYLE>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
  <TBODY>
  <TR>
    <TD style="HEIGHT: 105px">
        <asp:Image ID="Image1" runat="server" Height="111px" 
            ImageUrl="~/Admin/login_files/AdminTop.jpg" Width="145px" />
        sds<asp:Label ID="Label1" runat="server" 
            style="color: #000000; font-weight: 700; font-size: large; font-family: 'Courier New'" 
            Text="Administrator Login"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="color: #000000" Text="AdminID: "></asp:Label>
&nbsp;<INPUT id=txtName 
                  style="WIDTH: 130px" name=txtName runat="server"><br />
        <asp:Label ID="Label3" runat="server" style="color: #000000" Text="Password: "></asp:Label>
        <INPUT id=txtPwd style="WIDTH: 130px" 
                  type=password name=txtPwd runat="server"><br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Log In" />
                        </TD></TR>
  <TR>
    <TD>&nbsp;</TD></TR></TBODY></TABLE>
    </div>
    </form>
</body>
</html>
