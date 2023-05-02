using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Webforms_SignUp : System.Web.UI.Page
{
    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CASS.mdf;Integrated Security=True";
    SqlConnection con = new SqlConnection(strcon);
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFName.Focus();

        lblErrMsg.Text = "welcome!!!";
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        string strsel = "select * from AC where puser='" + txtUName.Text.Trim() + "'";
        SqlDataAdapter adptSel = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmdSel = new SqlCommand(strsel, con);
        adptSel.SelectCommand = cmdSel;
        adptSel.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            lblErrMsg.Text = "Please Enter Another User Name";
            txtUName.Text = "";
            txtUName.Focus();

        }
        else
        {
            
            String strIns;
            strIns = "Insert into AC (pfname,plname,paddress,pemail,pphone,puser,ppass,prole) values ('" +
             txtFName.Text + "','" + txtLName.Text + "','" + txtAddress.Text + "','" +
             txtEmail.Text + "','" + txtPhone.Text + "','" + txtUName.Text + "','" +
             txtPasswd.Text + "','client')";
            con.Open();
            SqlDataAdapter adptIns = new SqlDataAdapter();
            adptIns.InsertCommand = new SqlCommand(strIns, con);
            adptIns.InsertCommand.ExecuteNonQuery();
            lblErrMsg.Text = "Record Inserted Successfully...";
            Response.Redirect("Login.aspx");
            con.Close();
        }
    }
}