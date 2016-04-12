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
using System.IO;
public partial class Admin_AdminList : System.Web.UI.Page
{
    AirTicketWeb.BLL.Admin adminlist = new AirTicketWeb.BLL.Admin();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            getAdminList();
        }
    }
    private void getAdminList()
    {
        try
        {

            gvadmin.DataSource = adminlist.GetAllList();
            gvadmin.DataBind();
        }
        catch
        {

        }

    }
    protected void gvFilms_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string ID = gvadmin.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            adminlist.Delete(int.Parse(ID));


            Label4.Text = "Delete successful!";
            gvadmin.EditIndex = -1;
            getAdminList();
        }
        catch
        {

            Label4.Text = "Fail!";
        }

    }
    protected void gvFilms_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvadmin.PageIndex = e.NewPageIndex;
        getAdminList();
    }




    protected void gvadmin_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
