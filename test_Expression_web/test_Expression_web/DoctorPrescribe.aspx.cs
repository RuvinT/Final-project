using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Text;

namespace test_Expression_web
{
    public partial class DoctorPrescribe : System.Web.UI.Page
    {
        string pacname,issuedate,docorname,hospitalname,emailname;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email1 = Session["email"].ToString();

            string pid = pacientid.Text;



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
            conn.Open();



           

            String str = "select count(*) from PacientData where PatientID ='" + pid + "'AND email='"+email+"'";

            SqlCommand com = new SqlCommand(str, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp==1) {
                String insertQ2 = "select * from PacientData where PatientID='" + pid + "'";
                SqlCommand com2 = new SqlCommand(insertQ2, conn);

                SqlDataReader reader = com2.ExecuteReader();

                reader.Read();
                Pname.Text = reader["PatientName"].ToString();
                Date_issued.Text = reader["DateIssued"].ToString();
                docname.Text = reader["ConsultantName"].ToString();
                hospital.Text = reader["Hospital"].ToString();
                email.Text = reader["email"].ToString();

               pacname = reader["PatientName"].ToString();
                issuedate = reader["DateIssued"].ToString();
                docorname = reader["ConsultantName"].ToString();
                hospitalname= reader["Hospital"].ToString();
                emailname = reader["email"].ToString();






                conn.Close();
            }
            else
            {
                Response.Write("invalid NIC"+pid);

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
                conn.Open();

                String insertQ = "insert into PacientHistory(PatientName,DateIssued,ConsultantName,PatientID,Hospital,email,NextDate,Prescription) values (@pacname,@dateissue,@docname,@pacid,@hospital,@email,@nextdate,@prescription)";

                SqlCommand com = new SqlCommand(insertQ, conn);

                com.Parameters.AddWithValue("@pacname", pacname);
                com.Parameters.AddWithValue("@dateissue",issuedate);
                com.Parameters.AddWithValue("@docname", docorname);
                com.Parameters.AddWithValue("@pacid", pacientid);
                com.Parameters.AddWithValue("@hospital", hospitalname);
                com.Parameters.AddWithValue("@email", emailname);
                com.Parameters.AddWithValue("@nextdate", nextdate.Text);
                com.Parameters.AddWithValue("@prescription", TextArea.Text);
                com.ExecuteNonQuery();

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }
            SendPasswordResetEmail(emailname,pacname,issuedate,docorname,hospitalname,nextdate.Text,TextArea.Text);
            Response.Write("Mail was send to your account");

        }
        private void SendPasswordResetEmail(string ToEmail, string UserName,string issuedate,string doctorname,string hospitalname,string nextdate,string prescription)
        {
            // MailMessage class is present is System.Net.Mail namespace
            MailMessage mailMessage = new MailMessage("jagodaruvin@gmail.com", ToEmail);


            // StringBuilder class is present in System.Text namespace
            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
            sbEmailBody.Append("Date issued "+issuedate);
            sbEmailBody.Append("<br/>");
            sbEmailBody.Append("Channeled doctor"+docorname);
            sbEmailBody.Append("<br/>");
            sbEmailBody.Append("Channeled hospital" + hospitalname);
            sbEmailBody.Append("<br/>");
            sbEmailBody.Append("Next day to come" + nextdate);
            sbEmailBody.Append("<br/>");
            sbEmailBody.Append(prescription);

            sbEmailBody.Append("<b>Health Pack</b>");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Your prescription";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "jagodaruvin@gmail.com",
                Password = "empirestate"
            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }
    }
}