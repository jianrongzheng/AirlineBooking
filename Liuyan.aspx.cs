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

public partial class Admin_Liuyan : System.Web.UI.Page
{
    AirTicketWeb.BLL.Post getPodt = new AirTicketWeb.BLL.Post();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            getPost();
        }
    }
    private void getPost()
    {
        try
        {

            gvpost.DataSource = getPodt.GetAllList();
            gvpost.DataBind();
        }
        catch
        {

        }

    }
    protected void gvFilms_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string ID = gvpost.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            getPodt.Delete(int.Parse(ID));


            Label4.Text = "Delete successful!";
            gvpost.EditIndex = -1;
            getPost();
        }
        catch
        {

            Label4.Text = "Fail!";
        }

    }
    protected void gvFilms_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvpost.PageIndex = e.NewPageIndex;
        getPost();
    }
}
