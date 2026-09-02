using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Microsoft.Reporting.WebForms;
using System.Net.NetworkInformation;

namespace RentManagement
{
    public partial class ShowInvoice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)


        {
            // Assume 'reportViewer' is your report viewer control
            // and 'selectedValue' is the value retrieved from your input control
            string selectedValue = DropDownInvoice.SelectedValue;
           SqlCommand cmd1 = new SqlCommand("Delete from InvPrint" , con);
           cmd1.ExecuteNonQuery();

            SqlCommand cmd = new SqlCommand("Insert into InvPrint values (  '" + DropDownInvoice.SelectedValue + "')", con);
            cmd.ExecuteNonQuery();

            // Set the report parameter
           //// ReportParameter parameter = new ReportParameter("InvoiceNumber", selectedValue);
            //ReportViewer1.LocalReport.SetParameters(new ReportParameter[] { parameter });

            // Refresh the report
            ReportViewer1.LocalReport.Refresh();


        }
    }
}