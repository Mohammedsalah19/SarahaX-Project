using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Saraha
{
    public partial class profile : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Saraha;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "select message ,data from message0  where username_id ='" + Session["user_id"] + "'";
            // SelectCommand="select message ,data from message0 as mes inner join signup as up on usr=username  "
          //  SqlDataSource1.SelectCommand = "select message ,data from message0 as mes inner join signup as up on username_id='" + Session["user_id"] + "'";

            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

             

        }


    }
}