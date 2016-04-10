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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["Users"] == null)
            {
                TABLE1.Visible = true;
                table2.Visible = false;
            }
            else
            {
                TABLE1.Visible = false;
                table2.Visible = true;
            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        AirTicketWeb.BLL.Member login = new AirTicketWeb.BLL.Member();
        if (login.UserLogin(txtMName.Text, txtMPwd.Text))
        {
            Session["Users"] = txtMName.Text;

            TABLE1.Visible = false;
            table2.Visible = true;
            MName.Text = txtMName.Text;
        }
        else
        {
            TABLE1.Visible = true;
            table2.Visible = false;
            Label1.Text = "Error.Please be aware that your ID/Password are case sensitive.Please check and re-enter.";
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {

        Session["Users"] = null;
        Session.Abandon();
        Session.Clear();

        TABLE1.Visible = true;
        table2.Visible = false;
    }

}
