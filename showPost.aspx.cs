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

public partial class Admin_showPost : System.Web.UI.Page
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
        AirTicketWeb.BLL.Post bll = new AirTicketWeb.BLL.Post();
        AirTicketWeb.Model.Post model = bll.GetModel(id);
      
        this.txttitle.Text = model.title;
        this.txtname.Text = model.name;
        this.txtemail.Text = model.email;
        this.txthtp.Text = model.htp;
        this.txtneirong.Text = model.neirong;
        this.txtTime.Text = model.Addtime.ToString();

    }
}
