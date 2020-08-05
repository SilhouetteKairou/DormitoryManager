using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {
        //获得访问者的IP地址
        string ipAddress = Request.ServerVariables["REMOTE_ADDR"];
        //获取访问者的来源    
        string ipSrc = "暂无来源URL";
        if (Request.UrlReferrer == null)
        {
            ipSrc = "暂无来源URL";
        }
        else
        {
            ipSrc = Request.UrlReferrer.ToString();
        }
        //插入一条访问记录
        customerSrv.InsertNetView(ipAddress,ipSrc);

    }

    protected void BtnUserLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserLogin.aspx");
    }

    protected void BtnAdminLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLogin.aspx");
    }
}