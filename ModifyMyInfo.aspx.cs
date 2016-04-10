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

public partial class ModifyMyInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Users"] != null )
            {
                string id = Session["Users"].ToString();
                ShowInfo(id);
            }
        }

    }
    private void ShowInfo(string  MemberID)
    {
        AirTicketWeb.BLL.Member bll = new AirTicketWeb.BLL.Member();
        AirTicketWeb.Model.Member model = bll.GetMyModel(MemberID);
    
        this.txtMemberName.Text = model.MemberName;
        this.txtMemberTrueName.Text = model.MemberTrueName;
      
        this.txtMemberPWD.Text = model.MemberPWD;
        this.txtMemberPhone.Text = model.MemberPhone;
        this.txtMemberEmail.Text = model.MemberEmail;
        this.txtMemberAddress.Text = model.MemberAddress;
        this.txtMemberPostCode.Text = model.MemberPostCode;
     
        this.txtMemberds.Text = model.Memberds;

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string MemberName = Session["Users"].ToString();
        string MemberTrueName = this.txtMemberTrueName.Text;
        string MemberSex = DropDownList1.SelectedValue;
        string MemberPWD = this.txtMemberPWD.Text;
        string MemberPhone = this.txtMemberPhone.Text;
        string MemberEmail = this.txtMemberEmail.Text;
        string MemberAddress = this.txtMemberAddress.Text;
        string MemberPostCode = this.txtMemberPostCode.Text;
     


        AirTicketWeb.Model.Member model = new AirTicketWeb.Model.Member();
        model.MemberName = MemberName;
        model.MemberTrueName = MemberTrueName;
        model.MemberSex = MemberSex;
        model.MemberPWD = MemberPWD;
        model.MemberPhone = MemberPhone;
        model.MemberEmail = MemberEmail;
        model.MemberAddress = MemberAddress;
        model.MemberPostCode = MemberPostCode;
      

        AirTicketWeb.BLL.Member bll = new AirTicketWeb.BLL.Member();
        bll.UpdateMyinfo(model);
        Maticsoft.DBUtility.js.AlertAndRedirect("Success!", "Default.aspx");
    }

    protected void txtMemberName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtMemberAddress_TextChanged(object sender, EventArgs e)
    {

    }
}
