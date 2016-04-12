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

public partial class Admin_AddTInfoType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = this.txtname.Text;
        AirTicketWeb.Model.TInfotype model = new AirTicketWeb.Model.TInfotype();
        model.name = name;

        AirTicketWeb.BLL.TInfotype bll = new AirTicketWeb.BLL.TInfotype();
        bll.Add(model);
        Maticsoft.DBUtility.js.AlertAndRedirect("Success!", "TInfoType.aspx");
    }
}
