using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.NetworkInformation;
using System.Data.SqlTypes;

namespace RentManagement
{
    public partial class TenantInfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            if (!IsPostBack)
            {
               
                PopulateProperty();            
                            }
        }

        private void PopulateProperty()
        {
            cboProperty.Items.Add(new ListItem("--Select Property--", ""));
            cboProperty.AppendDataBoundItems = true;

            String strQuery = "select PropertyDesc, ID from PropertyMaster";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;

            cboProperty.DataSource = cmd.ExecuteReader();
            cboProperty.DataTextField = "PropertyDesc";
            cboProperty.DataValueField = "ID";
            cboProperty.DataBind();
        }
        private void PopulateTenant()
        {
                           

            cboTenant.Items.Add(new ListItem("--Select Tenant--", ""));
            cboTenant.AppendDataBoundItems = true;
            String strQuery = "select TenantName, ID from TenantDetails";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;

            cboTenant.DataSource = cmd.ExecuteReader();
            cboTenant.DataTextField = "TenantName";
            cboTenant.DataValueField = "ID";
            cboTenant.DataBind();


        }
        protected void cboProperty_SelectedIndexChanged(object sender, EventArgs e)
        {

            String strQuery = "select pm.TotalArea,pm.GSTNumber,pm.ParkingSlot , oi.Ownername from " +
                "PropertyMaster PM join Ownerinfo oi on oi.OwnerCode=pm.OwnerCode where" +
                              " pm.id = @PropertyDesc";

            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@PropertyDesc", cboProperty.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {

                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    txtTotalArea.Text = sdr[0].ToString();                                    }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }
        protected void cboTenant_SelectedIndexChanged(object sender, EventArgs e)
        {

            String strQuery = "select pm.TotalArea,pm.GSTNumber,pm.ParkingSlot , oi.Ownername from " +
                "PropertyMaster PM join Ownerinfo oi on oi.OwnerCode=pm.OwnerCode where" +
                              " pm.id = @PropertyDesc";

            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@PropertyDesc", cboProperty.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {

                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    txtTotalArea.Text = sdr[0].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into TenantMaster values (  '" + cboTenant.SelectedValue + "','" + cboProperty.SelectedValue + "','" + txtLeaseFrom.Text + "','" + txtLeaseTo.Text + "','" + txtTerm1From.Text + "','" + txtTerm1To.Text + "','" + txtTerm2From.Text + "','" + txtTerm2To.Text + "','" + txtTerm3From.Text + "','" + txtTerm3To.Text + "','" + txtLockingFrom.Text + "','" + txtLockingTo.Text + "','" + txtLockingFor.Text + "','" + txtParkingFree.Text + "','" + txtParkingChargeable.Text + "','" + txtParkingRate.Text + "','" + txtNoticePeriod.Text + "','" + txtMonthlyRent.Text + "','" + txtTotalArea.Text + "','" + txtPerSqRate.Text + "','" + txtPaymentDate.Text + "','" + txtDelayRate.Text + "','" + txtesclationRate.Text + "','" + txtesclationPeriod.Text + "','" + txtInvoiceDate.Text + "','" + cbostatus.SelectedValue + "','" + txtSecurity.Text + "','" + txtSecurityMonth.Text + "','" + txtRentstart.Text + "')", con);
            cmd.ExecuteNonQuery();
            String Ratetype = "Rent";
            String Status = "Active";
            
            Int16 NoofSlots = 1;
            SqlCommand cmd1 = new SqlCommand("Insert into TenantRate values (  '" + cboTenant.Text + "','" + cboProperty.SelectedValue + "','" + Ratetype + "','" + txtMonthlyRent.Text + "','" + Status + "','" + NoofSlots + "')", con);
            cmd1.ExecuteNonQuery();
          
            String Ratetype1 = "Parking";           
            SqlCommand cmd2 = new SqlCommand("Insert into TenantRate values (  '" + cboTenant.Text + "','" + cboProperty.SelectedValue + "','" + Ratetype1 + "','" + txtParkingRate.Text + "','" + Status + "','" + txtParkingChargeable.Text + "')", con);
            cmd2.ExecuteNonQuery();

            SqlCommand cmd3 = new SqlCommand("Insert into TenantRate_details values (  '" + cboTenant.Text + "','" + cboProperty.SelectedValue + "','" + Ratetype + "','" + txtMonthlyRent.Text + "','" + Status + "','" + NoofSlots + "','" + txtTerm1From.Text + "','" + txtTerm1To.Text + "')", con);
            cmd3.ExecuteNonQuery();          
            SqlCommand cmd4 = new SqlCommand("Insert into TenantRate_details values (  '" + cboTenant.Text + "','" + cboProperty.SelectedValue + "','" + Ratetype1 + "','" + txtParkingRate.Text + "','" + Status + "','" + txtParkingChargeable.Text + "','" + txtTerm1From.Text + "','" + txtTerm1To.Text + "')", con);
            cmd4.ExecuteNonQuery();

            con.Close();
            lblmessage.Text = "Data Inserted";

        }

        protected void txtesclationPeriod_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtTerm1To_TextChanged(object sender, EventArgs e)
        {

        }
    }
}