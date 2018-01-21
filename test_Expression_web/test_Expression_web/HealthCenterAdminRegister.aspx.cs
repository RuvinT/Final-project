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
    public partial class HealthCenterAdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void log_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                conn.Open();

                String insertQ = "insert into AdminHealthCenter(Email,Password) values (@email,@pword)";

                SqlCommand com = new SqlCommand(insertQ, conn);

               
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@pword", password.Text);
               
                com.ExecuteNonQuery();

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }
        }
    }
}