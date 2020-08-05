using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MajorLib : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["stuno"] == null)
        {
            string UrlBeforeDel = "UserLogin.aspx";//获取地址
            Response.Write("<script>alert('您尚未登陆，请先登陆！');window.location.href='" + UrlBeforeDel + "';</script>");

        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}