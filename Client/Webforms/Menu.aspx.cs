using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //for Dataset class
using System.Data.SqlClient;

public partial class Client_Webforms_Menu : System.Web.UI.Page
{
    static string strcon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|CASS.mdf;Integrated Security=True";
    SqlConnection con = new SqlConnection(strcon);


    int marId;
    SqlCommand sqlcmd;
    SqlDataReader dr;
    String a = "";
    int b;
    int c,d, uqty,x,i=0;
    double udisc, uamt, ussum;
    String uname;
    int[] y = new int[10];
    protected void Page_Load(object sender, EventArgs e)
    {
       // sqlcmd = new SqlCommand();
       // sqlcmd.Connection = con;
       // sqlcmd.CommandType = CommandType.StoredProcedure;
       // con.Open();
       // sqlcmd.CommandText = "RetriveData";
       // SqlParameter[] cmdParam = {new SqlParameter("@TblNm","Menu"),
       // new SqlParameter("@ClmNm","iqty"),
       //new SqlParameter("@strWhereClause","")};
       // foreach (SqlParameter param in cmdParam)
       // {
       //     sqlcmd.Parameters.Add(param);
       // }
       // dr = sqlcmd.ExecuteReader();
       // while(dr.Read())
       // {
            
             
       //     y[i + 1] = Convert.ToInt32(dr["iqty"]);
       //     i++;
       // }
       // con.Close();


        //lbl1.Text = "Quantity : " + y[1].ToString();
        //lbl2.Text = "Quantity : " + y[4].ToString();
        //lbl3.Text = "Quantity : " + y[2].ToString();
        //lbl4.Text = "Quantity : " + y[3].ToString();

    }

    //protected void btn1_Click(object sender, EventArgs e)
    //{
    //    sqlcmd = new SqlCommand();
    //    sqlcmd.Connection = con;
    //    sqlcmd.CommandType = CommandType.StoredProcedure;
    //    con.Open();
    //    sqlcmd.CommandText = "RetriveData";

    //    SqlParameter[] cmdParam = {new SqlParameter("@TblNm","Menu"),
    //    new SqlParameter("@ClmNm","*"),
    //    new SqlParameter("@strWhereClause","where iid=1")};
    //    foreach (SqlParameter param in cmdParam)
    //    {
    //        sqlcmd.Parameters.Add(param);
    //    }
    //    dr = sqlcmd.ExecuteReader();
    //    if (dr.Read())
    //    {
    //        a = dr[1].ToString();
    //        b = Convert.ToInt32(dr[2]);
    //        c= Convert.ToInt32(txtbx1.Text);
    //    }
    //     d = b * c;
    //    con.Close();
    //    sqlcmd = new SqlCommand();
    //    sqlcmd.Connection = con;
    //    sqlcmd.CommandType = CommandType.StoredProcedure;
    //    con.Open();
    //    sqlcmd.CommandText = "InsertCart";
    //    SqlParameter[] cmdParamIns = {new SqlParameter("@piname",a), new SqlParameter("@piprice",d),
    //                                         new SqlParameter("@piqty",c)};
    //    foreach (SqlParameter param in cmdParamIns)
    //    {
    //        sqlcmd.Parameters.Add(param);
    //    }
    //    sqlcmd.ExecuteNonQuery();
    //    con.Close();

    //}

    protected void btnGBill_Click(object sender, EventArgs e)
    {
        if (Session["Login"] != null)
        {
            Session["time"]=txtbxtime.Text;
            uname = Session["uname"].ToString();
            if (Ck1.Checked == true)
            {
                sqlcmd = new SqlCommand();
                sqlcmd.Connection = con;
                sqlcmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                sqlcmd.CommandText = "RetriveData";

                SqlParameter[] cmdParam1 = {new SqlParameter("@TblNm","Menu"),
                new SqlParameter("@ClmNm","*"),
                new SqlParameter("@strWhereClause","where iid=1")};
                foreach (SqlParameter param in cmdParam1)
                {
                    sqlcmd.Parameters.Add(param);
                }
                dr = sqlcmd.ExecuteReader();
                if (dr.Read())
                {
                    a = dr[1].ToString();
                    b = Convert.ToInt32(dr[2]);
                    
                    c = Convert.ToInt32(txtbx1.Text);
                    //x = Convert.ToInt32(dr[3]);
                    }
                //if(c>x)
                //{
                //    c = 0;
                //    txtbx1.Text = c.ToString();
                //}
                
                    d = b * c;
                    con.Close();
                    sqlcmd = new SqlCommand();
                    sqlcmd.Connection = con;
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    sqlcmd.CommandText = "InsertCart";
                    SqlParameter[] cmdParamIns1 = {new SqlParameter("@piname",a), new SqlParameter("@piprice",d),
                                                     new SqlParameter("@piqty",c)};
                    foreach (SqlParameter param in cmdParamIns1)
                    {
                        sqlcmd.Parameters.Add(param);
                    }
                    sqlcmd.ExecuteNonQuery();
                    con.Close();
                
                


                /* sqlcmd = new SqlCommand();
                 sqlcmd.Connection = con;
                 sqlcmd.CommandType = CommandType.StoredProcedure;
                 con.Open();
                 sqlcmd.CommandText = "InsertAdminView";
                 SqlParameter[] cmdParamIns2 = {new SqlParameter("@diname",a), new SqlParameter("@diprice",d),
                                                          new SqlParameter("@diqty",c),new SqlParameter("@ditime",txtbxtime.ToString())};
                 foreach (SqlParameter param in cmdParamIns2)
                 {
                     sqlcmd.Parameters.Add(param);
                 }
                 sqlcmd.ExecuteNonQuery();
                 con.Close();*/
            }


            if (Ck2.Checked == true)
            {
                sqlcmd = new SqlCommand();
                sqlcmd.Connection = con;
                sqlcmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                sqlcmd.CommandText = "RetriveData";

                SqlParameter[] cmdParam1 = {new SqlParameter("@TblNm","Menu"),
                new SqlParameter("@ClmNm","*"),
                new SqlParameter("@strWhereClause","where iid=5")};
                foreach (SqlParameter param in cmdParam1)
                {
                    sqlcmd.Parameters.Add(param);
                }
                dr = sqlcmd.ExecuteReader();
                if (dr.Read())
                {
                    a = dr[1].ToString();
                    b = Convert.ToInt32(dr[2]);

                    c = Convert.ToInt32(txtbx2.Text);
                    //x = Convert.ToInt32(dr[3]);
                }
                //if (c > x)
                //{
                //    c = 0;
                //    txtbx1.Text = c.ToString();
                //}
                d = b * c;
                    con.Close();
                    sqlcmd = new SqlCommand();
                    sqlcmd.Connection = con;
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    con.Open();
                    sqlcmd.CommandText = "InsertCart";
                    SqlParameter[] cmdParamIns1 = {new SqlParameter("@piname",a), new SqlParameter("@piprice",d),
                                                     new SqlParameter("@piqty",c)};
                    foreach (SqlParameter param in cmdParamIns1)
                    {
                        sqlcmd.Parameters.Add(param);
                    }
                    sqlcmd.ExecuteNonQuery();
                    con.Close();
                
                /* sqlcmd = new SqlCommand();
                 sqlcmd.Connection = con;
                 sqlcmd.CommandType = CommandType.StoredProcedure;
                 con.Open();
                 sqlcmd.CommandText = "InsertAdminView";
                 SqlParameter[] cmdParamIns2 = {new SqlParameter("@diname",a), new SqlParameter("@diprice",d),
                                                          new SqlParameter("@diqty",c),new SqlParameter("@ditime",txtbxtime.Text.
                              ToString())};
                 foreach (SqlParameter param in cmdParamIns2)
                 {
                     sqlcmd.Parameters.Add(param);
                 }
                 sqlcmd.ExecuteNonQuery();
                 con.Close();*/
            }



            if (Ck3.Checked == true)
            {
                sqlcmd = new SqlCommand();
                sqlcmd.Connection = con;
                sqlcmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                sqlcmd.CommandText = "RetriveData";

                SqlParameter[] cmdParam1 = {new SqlParameter("@TblNm","Menu"),
                new SqlParameter("@ClmNm","*"),
                new SqlParameter("@strWhereClause","where iid=3")};
                foreach (SqlParameter param in cmdParam1)
                {
                    sqlcmd.Parameters.Add(param);
                }
                dr = sqlcmd.ExecuteReader();
                if (dr.Read())
                {
                    a = dr[1].ToString();
                    b = Convert.ToInt32(dr[2]);
                    //x = Convert.ToInt32(dr[3]);
                    c = Convert.ToInt32(txtbx2.Text);
                }
                //if (c > x)
                //{
                //    c = 0;
                //    txtbx1.Text = c.ToString();
                //}
                d = b * c;
                con.Close();
                sqlcmd = new SqlCommand();
                sqlcmd.Connection = con;
                sqlcmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                sqlcmd.CommandText = "InsertCart";
                SqlParameter[] cmdParamIns1 = {new SqlParameter("@piname",a), new SqlParameter("@piprice",d),
                                                     new SqlParameter("@piqty",c)};
                foreach (SqlParameter param in cmdParamIns1)
                {
                    sqlcmd.Parameters.Add(param);
                }
                sqlcmd.ExecuteNonQuery();
                con.Close();
                /* sqlcmd = new SqlCommand();
                 sqlcmd.Connection = con;
                 sqlcmd.CommandType = CommandType.StoredProcedure;
                 con.Open();
                 sqlcmd.CommandText = "InsertAdminView";
                 SqlParameter[] cmdParamIns2 = {new SqlParameter("@diname",a), new SqlParameter("@diprice",d),
                                                          new SqlParameter("@diqty",c),new SqlParameter("@ditime",txtbxtime.Text.
                              ToString())};
                 foreach (SqlParameter param in cmdParamIns2)
                 {
                     sqlcmd.Parameters.Add(param);
                 }
                 sqlcmd.ExecuteNonQuery();
                 con.Close();*/
            }



            if (Ck4.Checked == true)
            {
                sqlcmd = new SqlCommand();
                sqlcmd.Connection = con;
                sqlcmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                sqlcmd.CommandText = "RetriveData";

                SqlParameter[] cmdParam1 = {new SqlParameter("@TblNm","Menu"),
                new SqlParameter("@ClmNm","*"),
                new SqlParameter("@strWhereClause","where iid=4")};
                foreach (SqlParameter param in cmdParam1)
                {
                    sqlcmd.Parameters.Add(param);
                }
                dr = sqlcmd.ExecuteReader();
                if (dr.Read())
                {
                    a = dr[1].ToString();
                    b = Convert.ToInt32(dr[2]);
                    //x = Convert.ToInt32(dr[3]);
                    c = Convert.ToInt32(txtbx2.Text);
                }
                //if (c > x)
                //{
                //    c = 0;
                //    txtbx1.Text = c.ToString();
                //}
                d = b * c;
                con.Close();
                sqlcmd = new SqlCommand();
                sqlcmd.Connection = con;
                sqlcmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                sqlcmd.CommandText = "InsertCart";
                SqlParameter[] cmdParamIns1 = {new SqlParameter("@piname",a), new SqlParameter("@piprice",d),
                                                     new SqlParameter("@piqty",c)};
                foreach (SqlParameter param in cmdParamIns1)
                {
                    sqlcmd.Parameters.Add(param);
                }
                sqlcmd.ExecuteNonQuery();
                con.Close();
                /*  sqlcmd = new SqlCommand();
                  sqlcmd.Connection = con;
                  sqlcmd.CommandType = CommandType.StoredProcedure;
                  con.Open();
                  sqlcmd.CommandText = "InsertAdminView";
                  SqlParameter[] cmdParamIns2 = {new SqlParameter("@diname",a), new SqlParameter("@diprice",d),
                                                           new SqlParameter("@diqty",c),new SqlParameter("@ditime",txtbxtime.Text.
                               ToString())};
                  foreach (SqlParameter param in cmdParamIns2)
                  {
                      sqlcmd.Parameters.Add(param);
                  }
                  sqlcmd.ExecuteNonQuery();
                  con.Close();*/
            }

            sqlcmd = new SqlCommand();
            sqlcmd.Connection = con;
            sqlcmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            sqlcmd.CommandText = "RetriveData";
            SqlParameter[] cmdParam = {new SqlParameter("@TblNm","cart"),
        new SqlParameter("@ClmNm","sum(piprice),sum(piqty)"),
        new SqlParameter("@strWhereClause","")};
            foreach (SqlParameter param in cmdParam)
            {
                sqlcmd.Parameters.Add(param);
            }
            dr = sqlcmd.ExecuteReader();
            if (dr.Read())
            {
                ussum = Convert.ToDouble(dr[0]);
                uqty = Convert.ToInt32(dr[1]);
            }
            con.Close();
            udisc = ussum * 0.1;
            uamt = ussum - udisc;
            sqlcmd = new SqlCommand();
            sqlcmd.Connection = con;
            sqlcmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            sqlcmd.CommandText = "Insertbill";

            SqlParameter[] cmdParamIns = {new SqlParameter("@buser",uname), new SqlParameter("@bqty",uqty),
                                             new SqlParameter("@bprice",ussum),new SqlParameter("@bdisc",udisc),
        new SqlParameter("@pamt",uamt)};
            foreach (SqlParameter param in cmdParamIns)
            {
                sqlcmd.Parameters.Add(param);
            }
            sqlcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Bill.aspx");
        }

        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void Ck1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Ck2_CheckedChanged(object sender, EventArgs e)
    {

    }
}