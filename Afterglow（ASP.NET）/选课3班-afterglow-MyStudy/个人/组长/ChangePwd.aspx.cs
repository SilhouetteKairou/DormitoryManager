using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePwd : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            stuID.Text = Session["stuno"].ToString();
        }
        else //未登录
        {
            Response.Redirect("~/UserLogin.aspx");
        }
    }

    protected void BtnChange_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int userId = int.Parse(Session["id"].ToString());
            if (userId > 0)
            {
                customerSrv.ChangePassword(userId,newPwd.Text.Trim());
                //Response.Write("<script>alert(/密码修改成功，请重新登陆！/)</script>");

                //Response.Redirect("~/UserLogin.aspx");//返回登陆界面

                string UrlBeforeDel = "UserLogin.aspx";//获取地址
                Response.Write("<script>alert('密码修改成功，请重新登陆！');window.location.href='" + UrlBeforeDel + "';</script>");

            }
        }
    }
}