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
public partial class Admin_TInfoManger : System.Web.UI.Page
{
    AirTicketWeb.BLL.TInfo TInfo = new AirTicketWeb.BLL.TInfo();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            MangerTInfo();
        }
    }
    private void MangerTInfo()
    {
        try
        {

            gvTInfo.DataSource = TInfo.GetAllList();
            gvTInfo.DataBind();
        }
        catch
        {

        }

    }
    protected void gvFilms_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string ID = gvTInfo.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            TInfo.Delete(int.Parse(ID));


            Label4.Text = "Delete sucessful!";
            gvTInfo.EditIndex = -1;
            MangerTInfo();
        }
        catch
        {

            Label4.Text = "Fail!";
        }

    }
    protected void gvFilms_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTInfo.PageIndex = e.NewPageIndex;
        MangerTInfo();
    }
}
