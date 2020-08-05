using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminBackstage : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admno"] == null)
        {
            string UrlBeforeDel = "AdminLogin.aspx";//获取地址
            Response.Write("<script>alert('您尚未登陆，请先登陆！');window.location.href='" + UrlBeforeDel + "';</script>");

        }
        else
        {
            lblAdminNo.Text = Session["admno"].ToString();
            lblTotalPeople.Text = Application["TotalPeople"].ToString();
            lblTotalView.Text = customerSrv.CountNetView().ToString();
            lblIpAddr.Text = Request.ServerVariables["REMOTE_ADDR"];
            lblSrc.Text = Request.UrlReferrer.ToString();


        }
    }
}