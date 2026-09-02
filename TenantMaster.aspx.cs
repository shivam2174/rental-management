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
    public partial class TenantMaster : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("Insert into TenantDetails values (  '" + txtTenant.Text + "','" + txtOfficeAddressLine1.Text + "','" + txtOfficeCity.Text + "','" + txtOfficeState.Text + "','" + txtOfficePinCode.Text + "','" + txtBillingAddressLine1.Text + "','" + txtBillingCity.Text + "','" + txtBillingState.Text + "','" + txtBillingPincode.Text + "','" + txtContactPerson.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtPANno.Text + "','" + txtTenantGST.Text + "','" + cbostatus.SelectedValue + "','" + txtaadhar.Text + "')", con);
            cmd.ExecuteNonQuery();                  
            con.Close();
            lblmessage.Text = "Data Inserted";

        }
    }
}