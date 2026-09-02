using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.UI.WebControls;

namespace RentManagement
{
    public partial class TestForm : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string insertCmd = "INSERT INTO testdate (date1) " + "VALUES (@date1)";

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                conn.Open();

                using (SqlCommand sqlcmd = new SqlCommand(insertCmd, conn))
                {
                    sqlcmd.Parameters.Clear();
                    SqlCommand sqlCmd = new SqlCommand(insertCmd, con);
                    sqlcmd.Parameters.AddWithValue("@date1", txtdate.Text);                    
                    sqlcmd.Parameters.Add("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;
                    sqlcmd.ExecuteNonQuery();
                    TextBox1.Text = @ID;
                }
            
            }
              


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "Date changed to :" + Calendar1.SelectedDate.ToShortDateString();
            txtdate.Text = Convert.ToString(Calendar1.SelectedDate.ToLongDateString());

        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            Label1.Text = "Month changed to :" + e.NewDate.ToShortDateString();
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
           
        }
    
}
}