using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Webforms_ClientMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
       
        Session["Login"] = null;
        Application.Lock();
        Application["ActiveUsers"] = Convert.ToInt32(Application["ActiveUsers"]) - 1;
        Application.UnLock();
        Response.Redirect("Home.aspx");
    }
}
