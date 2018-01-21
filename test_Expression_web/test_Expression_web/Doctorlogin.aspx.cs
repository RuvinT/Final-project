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
    public partial class Doctorlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void log_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
            conn.Open();

            String str = "select count(*) from Consultant where Email ='" + checkemail.Text + "'";

            SqlCommand com = new SqlCommand(str, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {

                string checkPasswordQuery = "select Password from Consultant where  Email ='" + checkemail.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);

                string pass = passComm.ExecuteScalar().ToString();
                if (pass == checkpassword.Text)
                {

                    Response.Write("Password is Correct");

                    Response.Redirect("DoctorPrescribe.aspx");
                    conn.Close();
                }
                else
                {
                    Response.Write(" password not match");
                }




            }
            else
            {
                Response.Write("Email  not match");
            }




            conn.Close();

        }
    }
}