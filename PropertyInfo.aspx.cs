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

namespace RentManagement
{
    public partial class PropertyInfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            if (!IsPostBack)
            {
                cboPropertyOwner.Items.Add(new ListItem("--Select Owner--", ""));
                cboPropertyOwner.AppendDataBoundItems = true;

                String strQuery = "select ownerName, Ownercode from OwnerInfo";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    
                    cboPropertyOwner.DataSource = cmd.ExecuteReader();
                    cboPropertyOwner.DataTextField = "ownerName";
                    cboPropertyOwner.DataValueField = "Ownercode";
                    cboPropertyOwner.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    
                }
            }
        }
    

        protected void cboPropertyOwner_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            String strQuery = "select GSTHaryana,GSTDelhi from OwnerInfo where" +
                              " ownerCode = @CustomerID";
           
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@CustomerID", cboPropertyOwner.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    
                   txtGST.Text = sdr[0].ToString();              
                 
                  
                  
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into propertyMaster values (  '" + cboPropertyOwner.SelectedValue + "','" + TxtPropertyDesc.Text + "','" + TxtPropertyAddress.Text + "','" + TxtPropertyUnitNo.Text + "','" + TxtTower.Text + "','" + TxtCity.Text + "','" + txtState.Text + "','" + txtpurchasedate.Text + "','" + txtPrice.Text + "','" + txtTotalArea.Text + "','" + txtPerSqftRAte.Text + "','" + txtStampduty.Text + "','" + txtGST.Text + "','" + txtLAP.Text + "','" + txtMonthlyInstallment.Text + "','" + txtMaturity.Text + "','"+ cbostatus.Text+ "','"+ txtPinCode.Text+ "','"+ TxtParkingSlot.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblMessage.Text = "Data Inserted";
            

        }
    }
}