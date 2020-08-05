using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KaoyanInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stuno"] == null)
        {
            string UrlBeforeDel = "UserLogin.aspx";//获取地址
            Response.Write("<script>alert('您尚未登陆，请先登陆！');window.location.href='" + UrlBeforeDel + "';</script>");

        }

    }

    protected void Btnzszx_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://yz.chsi.com.cn/kyzx/kydt/");
    }

    protected void Btnzsjz_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://yz.chsi.com.cn/kyzx/zsjz/");
    }

    protected void Btntjms_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://yz.chsi.com.cn/kyzx/zsjz/tmjz/");
    }

    protected void Btnfsbk_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://yz.chsi.com.cn/kyzx/fstj/");
    }

    protected void Btnzyjx_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://yz.chsi.com.cn/yzzt/zyqmjx/");
    }
    protected void Btnzsft_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://yz.chsi.com.cn/kyzx/kyft/");
    }
}