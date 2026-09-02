using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Security.Cryptography;

namespace RentManagement
{
    public partial class GenerateInvoice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            
        }

        protected void btnShowDetails_Click(object sender, EventArgs e)
        {
            
                   
            DataTable dt = new DataTable();
           
            SqlCommand com = new SqlCommand("Get_Invoice_generate", con);
            com.Parameters.AddWithValue("@StartDate", txtdate.Text );
            com.Parameters.AddWithValue("@GenInvoice", 1);            
            com.Parameters.AddWithValue("@Tenant", CboTenant.SelectedValue);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            try
            {
               
                da.Fill(dt);

               }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            

        }
    }
}