using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace test_Expression_web
{
    public partial class PasswordResetpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void log_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
            conn.Open();



           


          
            String updateQ = "update Pacient set Password='" + password.Text + "' where Email='" + email.Text+ "' ";
            SqlCommand com = new SqlCommand(updateQ, conn);



            com.ExecuteNonQuery();

            conn.Close();
            Response.Write("<script>alert('New password is set');</script>");
        }
    }
}