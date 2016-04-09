using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Get();
        }

    }
    private void Get()
    {

    }
    protected void lbtnALogin_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript>window.open('AdminManage/Login.aspx','','width=455,height=255')</script>");
    }
}
