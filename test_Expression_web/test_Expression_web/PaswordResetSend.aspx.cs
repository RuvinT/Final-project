using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace test_Expression_web
{
    public partial class PaswordResetSend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void SendPasswordResetEmail(string ToEmail, string UserName)
        {
            // MailMessage class is present is System.Net.Mail namespace
            MailMessage mailMessage = new MailMessage("jagodaruvin@gmail.com", ToEmail);


            // StringBuilder class is present in System.Text namespace
            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
            sbEmailBody.Append("Please click on the following link to reset your password");
            sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost:65092/login");
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("<b>Health Pack</b>");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Reset Your Password";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "jagodaruvin@gmail.com",
                Password = "empirestate"
            };

            smtpClient.EnableSsl =true;
            smtpClient.Send(mailMessage);
        }


        protected void log_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
            conn.Open();

            String str = "select count(*) from Patient where Email ='" + checkemail.Text + "'";

            SqlCommand com = new SqlCommand(str, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                string sendemail = ConfigurationManager.AppSettings["SendEmail"];
                if (sendemail.ToLower() == "true")
                {

                    SendPasswordResetEmail(checkemail.Text, username.Text);

                    Response.Write("Message was send to email");
                }

            }
            else
            {
                Response.Write("Email  not match with user emails");
            }




            conn.Close();

        }
    }
}