using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stuno"] == null)
        {
            string UrlBeforeDel = "UserLogin.aspx";//获取地址
            Response.Write("<script>alert('您尚未登陆，请先登陆！');window.location.href='" + UrlBeforeDel + "';</script>");

        }
        
    }
    protected void BtnCalendar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Index.aspx");
    }
}