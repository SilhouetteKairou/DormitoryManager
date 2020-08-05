using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Info : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stuno"] == null)
        {
            string UrlBeforeDel = "UserLogin.aspx";//获取地址
            Response.Write("<script>alert('您尚未登陆，请先登陆！');window.location.href='" + UrlBeforeDel + "';</script>");

        }
        else
        {
            stuID.Text = Session["stuno"].ToString();
        }
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            customerSrv.ChangeInfo(stuID.Text, txtCollege.Text.Trim(), txtName.Text.Trim());
            Response.Write("信息修改成功");
        }
        else
        {
            Response.Write("信息修改失败");
        }
    }
}