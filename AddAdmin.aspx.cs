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

public partial class Admin_AddAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AirTicketWeb.BLL.Admin bll = new AirTicketWeb.BLL.Admin();
        if (bll.Exists(txtName.Text))
        {
            Maticsoft.DBUtility.js.AlertAndRedirect("This ID existed. Please change another one. ", "AddAdmin.aspx");
        }
        else
        {
            string Apwd = this.TextBox1.Text;
            string Aname = this.txtName.Text;

            AirTicketWeb.Model.Admin model = new AirTicketWeb.Model.Admin();
            model.Apwd = Apwd;
            model.Aname = Aname;

            bll.Add(model);
            Maticsoft.DBUtility.js.AlertAndRedirect("Success!", "AdminList.aspx");
        }
    }
}
