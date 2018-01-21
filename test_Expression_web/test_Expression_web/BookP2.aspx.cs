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
        Boolean flag = true;
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



           


            SqlConnection connx = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);

            connx.Open();
            String insertQ2 = "select RoomNumber from DocSedule where DoctorName='" + Session["doctor"].ToString() + "' AND Date='" + Session["Date"].ToString() + "' AND Hospital='" + Session["hos"].ToString() + "' AND Time='"+ Session["Time"].ToString() + "'";
           

            SqlCommand com2 = new SqlCommand(insertQ2, connx);
           
            room.Text = com2.ExecuteScalar().ToString();
            
           
            



         

            connx.Close();

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
                String updateQ = "update DocSedule set PacientNumber='" + max + "' where DoctorName='" + Session["doctor"].ToString() + "' AND Date='" + Session["Date"].ToString() + "' AND Hospital='" + Session["hos"].ToString() + "' AND Time='" + Session["Time"].ToString() + "' ";
                SqlCommand com = new SqlCommand(updateQ, conn);
               
               

                com.ExecuteNonQuery();

                conn.Close();
                string name1 = Session["name"].ToString();
                string date1 = Session["Date"].ToString();
                string doctor1 = Session["doctor"].ToString();
                string nic1 = Session["nic"].ToString();
                string hos1 = Session["hos"].ToString();
                string email1 = Session["email"].ToString();
                
                SqlConnection connt = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                connt.Open();
                String insertQ = "insert into PacientData(PatientName,DateIssued,ConsultantName,PatientID,Hospital,email) values (@pac_name,@date,@doc,@pacid,@hos,@email)";

                SqlCommand comt = new SqlCommand(insertQ, connt);

                comt.Parameters.AddWithValue("@pac_name", name1);
                comt.Parameters.AddWithValue("@date", date1);
                comt.Parameters.AddWithValue("@doc", doctor1);
                comt.Parameters.AddWithValue("@pacid", nic1);
                comt.Parameters.AddWithValue("@hos", hos1);
                comt.Parameters.AddWithValue("@email", email1);

                comt.ExecuteNonQuery();
                connt.Close();
                Response.Write("<script>alert('Your booking was successful');</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }



           /* String insertQ = "insert into Appointment(DoctorId,Date) values (@id,@date)";

            SqlCommand com = new SqlCommand(insertQ, conn);

            com.Parameters.AddWithValue("@id", appdocid.Text);
            com.Parameters.AddWithValue("@date", appdate.Text);



            com.ExecuteNonQuery();*/


        }
    }
}