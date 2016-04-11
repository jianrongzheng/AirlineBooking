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

public partial class Admin_AddTInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            AirTicketWeb.BLL.TInfotype bll = new AirTicketWeb.BLL.TInfotype();
           DropDownList1.DataSource= bll.GetAllList();
           DropDownList1.DataTextField = "name";
           DropDownList1.DataValueField = "id";
           DropDownList1.DataBind();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string name = this.txtname.Text;

        string TypeName = DropDownList1.SelectedItem.Text;
        int  TypeId = int.Parse(DropDownList1.SelectedValue);

        string StartT = this.StartT.Text;

        string ET = this.ET.Text;
        string ds = this.txtds.Text;

        string STime = this.STime.Text;

        string DanJia = this.DanJia.Text;

        string ShiJian = this.ShiJian.Text;

        AirTicketWeb.Model.TInfo model = new AirTicketWeb.Model.TInfo();
        model.name = name;
        model.typeName = TypeName;
        model.TypeId =TypeId;

        model.StartT = StartT;

        model.ET = ET;
        model.Ds = ds;
        model.STime = STime;
        model.DanJia = DanJia;
        model.ShiJian = ShiJian;
        AirTicketWeb.BLL.TInfo bll = new AirTicketWeb.BLL.TInfo();
        bll.Add(model);
        Maticsoft.DBUtility.js.AlertAndRedirect("Success!", "TInfoManger.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
