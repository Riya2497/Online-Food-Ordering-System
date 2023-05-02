using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Webforms_Login : System.Web.UI.Page
{
    static String strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DAtaDirectory|CASS.mdf;Integrated Security=True";
    SqlConnection con = new SqlConnection(strcon);
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUName.Focus();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Login"] = "login";
        string Strsel = "select * from AC where puser='" +
            txtUName.Text.Trim() + "'";
        SqlCommand cmdsel = new SqlCommand(Strsel, con);
        SqlDataReader dr;
        con.Open();
        dr = cmdsel.ExecuteReader();
        if (dr.Read() == true)
        {
            if (dr["ppass"].ToString() == txtPasswd.Text.Trim())
            {
                if (dr["prole"].ToString() == "admin")
                {
                    lblErrMsg.Text = "Login Successful";
                    Response.Redirect("../../Admin/Webforms/Home.aspx");
                }
                else
                {
                    Session["uname"] = dr["puser"].ToString();
                    
                    lblErrMsg.Text = "Login Successful";
                    Response.Redirect("Menu.aspx");
                }

            }
            else
            {
                lblErrMsg.Text = "Invalid Password";
                txtPasswd.Focus();
            }
        }
        else
        {
            lblErrMsg.Text = "Invalid Username";
            txtUName.Focus();
        }
    }
}