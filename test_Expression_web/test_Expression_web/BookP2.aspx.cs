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
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
            conn.Open();



            String insertQ2 = "select RoomNumber from DocSedule where DoctorName='" + Session["doctor"].ToString() + "'";
           

            SqlCommand com2 = new SqlCommand(insertQ2, conn);
           
            room.Text = com2.ExecuteScalar().ToString();
            
           
            



         

            conn.Close();

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                conn.Open();

               
                
                String insertQ2 = "select PacientNumber from DocSedule where DoctorName='" + Session["doctor"].ToString() + "'";
              
                
                SqlCommand com2 = new SqlCommand(insertQ2, conn);
               int max=int.Parse(  com2.ExecuteScalar().ToString());
                max = max + 1;
                String updateQ = "update DocSedule set PacientNumber='" + max + "' where DoctorName='" + Session["doctor"].ToString() + "' ";
                SqlCommand com = new SqlCommand(updateQ, conn);
               
               

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