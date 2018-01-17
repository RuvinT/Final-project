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
    public partial class BookP2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nat.Text=Session["rad"].ToString();
             name.Text= Session["name"].ToString();
             nic.Text= Session["nic"].ToString();
            // email.Text= Session["email"].ToString();
            // passport.Text= Session["passport"].ToString();
             phone.Text= Session["phone"].ToString();
            mr.Text = Session["mr"].ToString();
           Hospital.Text = Session["hos"].ToString();
            hos.Text = Session["hos"].ToString();
            date.Text=Session["Date"].ToString();
           time1.Text= Session["Time"].ToString();
            time.Text = Session["Time"].ToString();
            doctor.Text= Session["doctor"].ToString();
           count.Text= Session["cou"].ToString();

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                conn.Open();

                String insertQ = "insert into DocSedule(DoctorID,Specification,DoctorName,Date,Time,Hospital) values (@did,@spe,@d_name,@date,@time,@hos)";
                String insertQ1 = "select DoctorID from DocSedule";
                SqlCommand com = new SqlCommand(insertQ, conn);
                SqlCommand com1 = new SqlCommand(insertQ1, conn);
                com.Parameters.AddWithValue("@did", com1.ExecuteScalar().ToString());
                com.Parameters.AddWithValue("@spe", Session["spe"].ToString());
                com.Parameters.AddWithValue("@d_name", Session["doctor"].ToString());
                com.Parameters.AddWithValue("@date", Session["Date"].ToString());
                com.Parameters.AddWithValue("@time", Session["Time"].ToString());
                com.Parameters.AddWithValue("@hos", Session["hos"].ToString());

                com.ExecuteNonQuery();

                conn.Close();
                Response.Write("<script>alert('Your booking was successful');</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }


        }
    }
}