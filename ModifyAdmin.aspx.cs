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

public partial class Admin_ModifyAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.Params["id"] != null && Request.Params["id"].Trim() != "")
            {
                string id = Request.Params["id"];
                ShowInfo(int.Parse(id));
            }
        }
    }
    private void ShowInfo(int id)
    {
        AirTicketWeb.BLL.Admin bll = new AirTicketWeb.BLL.Admin();
        AirTicketWeb.Model.Admin model = bll.GetModel(id);

        this.TextBox1.Text = model.Apwd;
        this.txtName.Text = model.Aname;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Apwd = this.TextBox1.Text;
        string Aname = this.txtName.Text;


        AirTicketWeb.Model.Admin model = new AirTicketWeb.Model.Admin();
        model.id = int.Parse(Request.Params["id"]);
        model.Apwd = Apwd;
        model.Aname = Aname;

        AirTicketWeb.BLL.Admin bll = new AirTicketWeb.BLL.Admin();
        bll.Update(model);
        Maticsoft.DBUtility.js.AlertAndRedirect("Modify Successful!", "AdminList.aspx");
    }
}
