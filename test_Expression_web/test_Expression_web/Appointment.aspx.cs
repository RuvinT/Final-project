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
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                conn.Open();

                String insertQ = "insert into Appointment(DoctorId,Date) values (@id,@date)";

                SqlCommand com = new SqlCommand(insertQ, conn);

                com.Parameters.AddWithValue("@id", appdocid.Text);
                com.Parameters.AddWithValue("@date", appdate.Text);
                
                
               
                com.ExecuteNonQuery();

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }

         
            Response.Write("Appointment Succesfull");
        }

        protected void appdocid_TextChanged(object sender, EventArgs e)
        {

        }

        protected void appdate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void apptime_TextChanged(object sender, EventArgs e)
        {

        }
    }
}