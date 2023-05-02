using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Webforms_Bill : System.Web.UI.Page
{
    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CASS.mdf;Integrated Security=True";
    SqlConnection con = new SqlConnection(strcon);

    SqlConnection con1 = new SqlConnection(strcon);
    SqlConnection con2 = new SqlConnection(strcon);
    SqlCommand sqlcmd;
    SqlDataReader dr;
    string time;
    Double amount;
    int myid,i=0;
   
    int[] change=new int[10];
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcmd = new SqlCommand();
        sqlcmd.Connection = con;
        sqlcmd.CommandType = CommandType.StoredProcedure;


        con.Open();
        sqlcmd.CommandText = "RetriveData";
        SqlParameter[] cmdParam = {new SqlParameter("@TblNm","bill"),
                new SqlParameter("@ClmNm","max(bid)"),
                new SqlParameter("@strWhereClause","")};
        foreach (SqlParameter param in cmdParam)
        {
            sqlcmd.Parameters.Add(param);
        }
        dr = sqlcmd.ExecuteReader();
        if (dr.Read())
        {
            myid = Convert.ToInt32(dr[0]);
        }
        con.Close();


        sqlcmd = new SqlCommand();
        sqlcmd.Connection = con;
        sqlcmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        sqlcmd.CommandText = "RetriveData";
        SqlParameter[] cmdParam1 = {new SqlParameter("@TblNm","bill"),
                new SqlParameter("@ClmNm","pamt"),
                new SqlParameter("@strWhereClause","where bid="+myid)};
        foreach (SqlParameter param in cmdParam1)
        {
            sqlcmd.Parameters.Add(param);
        }
        dr = sqlcmd.ExecuteReader();
        if (dr.Read())
        {
            amount = Convert.ToDouble(dr[0]);
        }
        con.Close();


       /* con.Open();
        string str = " Delete from cart";
        sqlcmd = new SqlCommand(str, con);
        int r = sqlcmd.ExecuteNonQuery();
        if (r < 0)
        {
            lblErrMsg2.Text = "error!!!";
        }
        else
        {
            lblErrMsg2.Text = "Thankyou";
        }
        con.Close();*/
        lblErrMsg.Text = amount.ToString();
        lblErrMsg2.Text = "Thankyou";
    }

    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        time = Session["time"].ToString();
        sqlcmd = new SqlCommand();


        sqlcmd.Connection = con;
        sqlcmd.CommandType = CommandType.StoredProcedure;


        //con.Open();
        //sqlcmd.CommandText = "RetriveData";
        //SqlParameter[] cmdParam = {new SqlParameter("@TblNm","Menu"),
        //new SqlParameter("@ClmNm","iqty"),
        //new SqlParameter("@strWhereClause","")};
        //foreach (SqlParameter param in cmdParam)
        //{
        //    sqlcmd.Parameters.Add(param);
        //}
        //dr = sqlcmd.ExecuteReader();
        //while (dr.Read())
        //{

        //    change[i + 1] = Convert.ToInt32(dr[0]);

        //    i++;
        //}
        //con.Close();

        sqlcmd.Connection = con;
        sqlcmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        sqlcmd.CommandText = "RetriveData";
        SqlParameter[] cmdParam3 = {new SqlParameter("@TblNm","cart"),
        new SqlParameter("@ClmNm","*"),
        new SqlParameter("@strWhereClause","")};

        
        foreach (SqlParameter param in cmdParam3)
        {
            sqlcmd.Parameters.Add(param);
        }
        dr = sqlcmd.ExecuteReader();
        //con.Close();
        while (dr.Read())
        {
            //con.Close();
            // con.Open();
            String a = dr[1].ToString();
            int b = Convert.ToInt32(dr[2]);
            int c = Convert.ToInt32(dr[3]);
            //con.Close();
            //if (a == "Burger")
            //{
            //    change[1] = change[1] - c;
            //    con2.Open();
            //    string str2 = " update Menu set iqty=change[1] where iname='Burger'";
            //    sqlcmd = new SqlCommand(str2, con2);
            //    sqlcmd.ExecuteNonQuery();


            //    con2.Close();


            //}
            //if (a == "Dabeli")
            //{
            //    change[2] = change[2] - c;
            //    con2.Open();
            //    string str2 = " update Menu set iqty=change[2] where iname='Dabeli'";
            //    sqlcmd = new SqlCommand(str2, con2);
            //    sqlcmd.ExecuteNonQuery();
            //    con2.Close();
            //}
            //if (a == "Frankie")
            //{
            //    change[3] = change[3] - c;
            //    con2.Open();
            //    string str2 = " update Menu set iqty=change[3] where iname='Frankie'";
            //    sqlcmd = new SqlCommand(str2, con2);
            //    sqlcmd.ExecuteNonQuery();
            //    con2.Close();

            //}
            //if (a == "Chole")
            //{
            //    change[4] = change[4] - c;
            //    con2.Open();
            //    string str2 = " update Menu set iqty='change[4]' where iname='Chole'";
            //    sqlcmd = new SqlCommand(str2, con2);
            //    sqlcmd.ExecuteNonQuery();
            //    con2.Close();
            //}
            string strIns;
            strIns = "Insert into AdminView (diname,diprice,diqty,ditime) values ('" +
             a +"',"+b+","+c+",'"+time+"')";
            con1.Open();
            SqlDataAdapter adptIns = new SqlDataAdapter();
            adptIns.InsertCommand = new SqlCommand(strIns, con1);
            adptIns.InsertCommand.ExecuteNonQuery();
           // lblErrMsg.Text = "Record Inserted Successfully";
           con1.Close();

            
            
            // con.Close();
            /*sqlcmd1 = new SqlCommand();
            sqlcmd1.Connection = con;
            sqlcmd1.CommandType = CommandType.StoredProcedure;
            //con.Open();
            sqlcmd1.CommandText = "InsertAdminView";
            SqlParameter[] cmdParamIns2 = {new SqlParameter("@diname",a), new SqlParameter("@diprice",b),
                                                     new SqlParameter("@diqty",c),new SqlParameter("@ditime","2:15"
                         )};
            foreach (SqlParameter param in cmdParamIns2)
            {
                sqlcmd1.Parameters.Add(param);
            }
            sqlcmd1.ExecuteNonQuery();
            con.Close();*/
        }
       con.Close();
        
       
        con.Open();
        string str = " Delete from cart";
        sqlcmd = new SqlCommand(str, con);
        sqlcmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Payment.aspx");
        
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {

        con.Open();
        string str = " Delete from cart";
        sqlcmd = new SqlCommand(str, con);
        sqlcmd.ExecuteNonQuery();
        con.Close();
        con.Open();
        string s = "Delete from bill where bid="+myid;
        sqlcmd = new SqlCommand(s, con);
        sqlcmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Menu.aspx");
    }
    
}