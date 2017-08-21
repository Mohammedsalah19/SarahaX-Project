using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace login.html
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Saraha;Integrated Security=True");
          
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("select usr,usr_id , pass,year,month,day from signup", con);
          //  SqlCommand cmd2 = new SqlCommand("select username_id from message0", con);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
          
            while (dr.Read())
            {
                if (dr["usr"].ToString() == name.Text && dr["pass"].ToString() == pass.Text)
                {
                    
                    


                    Session["user"] = dr["usr"];
                    Session["year"] = dr["year"];
                    Session["month"] = dr["month"].ToString();
                    Session["day"] = dr["day"].ToString();
                    Session["user_id"] = dr["usr_id"];
                    con.Close();
                    
                    Response.Redirect("index.aspx?s="+ Session["user"]);
                }
                else
                {
                    //Label1.Text = "Invalid E-mail Or Password";
                }
            }
            dr.Close();
          
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}