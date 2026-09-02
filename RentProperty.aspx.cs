using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace RentManagement
{
    public partial class RentProperty : System.Web.UI.Page
    {
        protected
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tenantinfo.aspx");
        }
    }
}