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
public partial class Tlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getTInfoList();
        }
    }
    private void getTInfoList()
    {
        try
        {
            DataSet ds = new DataSet();

            AirTicketWeb.BLL.TInfo GetTInfo = new AirTicketWeb.BLL.TInfo();
            ds = GetTInfo.GetAllList();

            PagedDataSource objPds = new PagedDataSource();
            objPds.DataSource = ds.Tables[0].DefaultView;

            objPds.AllowPaging = true;
            objPds.PageSize = 12;

            int CurPage;
            if (Request.QueryString["Page"] != null)
                CurPage = Convert.ToInt32(Request.QueryString["Page"]);
            else
                CurPage = 1;

            objPds.CurrentPageIndex = CurPage - 1;
            lblCurrentPage.Text = CurPage.ToString();
            lblSumPage.Text = objPds.PageCount.ToString();

       
            DataList1.DataSource = objPds;
            DataList1.DataBind();


        }
        catch
        {

        }

    }
}
