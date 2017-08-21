using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Saraha
{
    public partial class index : System.Web.UI.Page
    {
 SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Saraha;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["user"]==null)
            //{
            //    Response.Redirect("login.aspx");
            //}
          //SqlCommand cmd2 =new SqlCommand( "select userid from signup  where username ='" + Session["user"] + "'");
          //  SqlDataReader dr = cmd2.ExecuteReader();
          //  = dr["usr_id"];


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Request.QueryString["s"]!=null)
            {


                SqlCommand cmd = new SqlCommand("insert into message0(message,username,username_id,data) values ('" + TextArea2.InnerText + "','" + Session["user"] + "','" + Session["user_id"] + "','" + DateTime.Now.ToLongDateString() + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            else
            {

                Label1.Text= "there is no user ";
            }

        }
    }
}