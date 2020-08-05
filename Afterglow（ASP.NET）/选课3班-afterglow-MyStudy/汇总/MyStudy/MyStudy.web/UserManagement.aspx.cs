using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserManagement : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


}