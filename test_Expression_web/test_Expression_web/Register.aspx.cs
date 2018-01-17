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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                conn.Open();

                String str = "select count(*) from Patient where PatientID ='" + id.Text + "'";

                SqlCommand com = new SqlCommand(str, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (temp == 1)
                    Response.Write("User already exist");



                conn.Close();

            }


        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                conn.Open();

                String insertQ = "insert into Patient(PatientID,Age,Gender,TP,Email,Password,Name) values (@pac_id,@age,@Radio,@tp,@email,@pword,@name)";

                SqlCommand com = new SqlCommand(insertQ, conn);

                com.Parameters.AddWithValue("@pac_id", id.Text);
                com.Parameters.AddWithValue("@age", age.Text);
                com.Parameters.AddWithValue("@Radio", gen.SelectedItem.ToString());
                com.Parameters.AddWithValue("@tp", tp.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@pword", password.Text);
                com.Parameters.AddWithValue("@name", name.Text);
                com.ExecuteNonQuery();

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }

            Response.Redirect("Appointment.aspx");
           
        }
    }
}