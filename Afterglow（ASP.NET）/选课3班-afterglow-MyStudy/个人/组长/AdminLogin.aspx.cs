using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnAdminLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int adminId = customerSrv.CheckAdminLogin(txtAdmno.Text.Trim(), txtAdmPwd.Text.Trim());
            if (adminId > 0)
            {
                Session.Clear();
                Session["id"] = adminId;
                Session["admno"] = txtAdmno.Text;
                Response.Redirect("~/AdminBackstage.aspx");
            }
            else
            {
                //Response.Write("error");
                Response.Write("<script>alert(/工号或者密码错误！/)</script>");
            }
        }
    }

    protected void txtAdmno_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtAdmPwd_TextChanged(object sender, EventArgs e)
    {

    }
}