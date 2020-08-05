using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reg : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnReg_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (customerSrv.CheckExist(txtStuno.Text.Trim()))
            {
                //Response.Write("error");
                Response.Write("<script>alert(/用户名已存在！/)</script>");
            }
            else
            {
                customerSrv.Insert(txtStuno.Text.Trim(),txtName.Text.Trim(),txtPwd.Text.Trim());
                customerSrv.InsertCollege(txtStuno.Text.Trim(), txtName.Text.Trim(), txtCollege.Text.Trim());
                Response.Redirect("UserLogin.aspx?stuno=" + txtStuno.Text);
            }
        }
    }
}