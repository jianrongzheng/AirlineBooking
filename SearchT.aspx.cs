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

public partial class SearchT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchList.aspx?StartT=" + TextBox2.Text + "&ET=" + TextBox1.Text + "&STime="+TextBox3.Text);
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}
