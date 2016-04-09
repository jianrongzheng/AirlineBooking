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

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        AirTicketWeb.BLL.Member bll = new AirTicketWeb.BLL.Member();
        if (bll.Exists(txtMemberName.Text))
        {
            Maticsoft.DBUtility.js.AlertAndRedirect("This ID have been created. Please enter another one.", "register.aspx");
        }

        else
        {
            string MemberName = this.txtMemberName.Text;
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
         



          
            bll.Add(model);
            Maticsoft.DBUtility.js.AlertAndRedirect("Success! Please log in.", "login.aspx");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
