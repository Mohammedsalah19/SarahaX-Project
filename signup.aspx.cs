using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace login.html
{
    public partial class signup : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Saraha;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (! IsPostBack)
            {
                for (int i = DateTime.Now.Year-1; i >=1950; i--)
                {
                    year.Items.Add(i.ToString());
                }
                for (int i = 1; i < 13; i++)
                {
                    month.Items.Add(i.ToString());
                    
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlCommand cmd = new SqlCommand("insert into signup(usr,year,month,day,pass) values ('" + user.Text + "','"+year.Text+"','"+month.Text+"','"+day.Text+"','"+pass.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


        }

        protected void month_SelectedIndexChanged(object sender, EventArgs e)
        {
            day.Items.Clear();
            int currentyear = int.Parse(year.Text);
            int currentmonth = int.Parse(month.Text);
            for (int i = 1; i <=DateTime.DaysInMonth(currentyear,currentmonth); i++)
            {
                day.Items.Add(i.ToString());
            }
        }
    }
}