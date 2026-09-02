using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace RentManagement
{
    public partial class OwnerInfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into ownerinfo values (  '" + TxtOwnercode.Text + "','" + TxtOwnerName.Text + "','" + TxtAddressLine1.Text + "','" + TxtCity.Text + "','" + txtState.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtGSTHaryana .Text + "','" + txtGSTDelhi.Text + "','" + txtPincode.Text + "','"+txtPanNo.Text +"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblMessage.Text ="Data Inserted";           
           
        }
    }
}