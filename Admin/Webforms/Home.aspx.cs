using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Webforms_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //int a = Convert.ToInt32(Application["ActiveUsers"]);
        //int b= Convert.ToInt32(Application["TotalVisitors"]) - 1;
        lblTotActUsers.Text = Application["ActiveUsers"].ToString();
        lblTotVisitors.Text = Application["TotalVisitors"].ToString();
    }
}