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

public partial class Admin_UserList : System.Web.UI.Page
{
    AirTicketWeb.BLL.Member Users = new AirTicketWeb.BLL.Member();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            getUserINfo();
        }
    }
    private void getUserINfo()
    {
        try
        {

            gvUsers.DataSource = Users.GetAllList();
            gvUsers.DataBind();
        }
        catch
        {

        }

    }
    protected void gvFilms_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string ID = gvUsers.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            Users.Delete(int.Parse(ID));


            Label4.Text = "Delete successful!";
            gvUsers.EditIndex = -1;
            getUserINfo();
        }
        catch
        {

            Label4.Text = "Fail!";
        }

    }
    protected void gvFilms_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvUsers.PageIndex = e.NewPageIndex;
        getUserINfo();
    }

}
