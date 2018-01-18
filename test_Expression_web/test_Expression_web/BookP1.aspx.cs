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
    public partial class BookP1 : System.Web.UI.Page
    {
        String rad;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString);
            conn.Open();



            String insertQ2 = "select MaxPacients from DocSedule where DoctorName='" + Request.QueryString["Doc"].ToString() + "'";


            SqlCommand com2 = new SqlCommand(insertQ2, conn);
            int max = int.Parse(com2.ExecuteScalar().ToString());



            conn.Close();
            int count= int.Parse(Request.QueryString["cou"].ToString());

            if (max <= count) { Response.Write("<script>alert('Sorry number of pacients are full');</script>"); }
            else
            {





                doctor.Text = Request.QueryString["Doc"].ToString();

                hospital.Text = Request.QueryString["Hos"].ToString();
                date.Text = Request.QueryString["Date"].ToString();
                time.Text = Request.QueryString["Time"].ToString();
                time1.Text = Request.QueryString["Time"].ToString();
                number.Text = Request.QueryString["cou"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (radLocal.Checked) rad = radLocal.Text; else rad = radForign.Text;
                Session["name"] = name.Text;
                Session["nic"] = nic.Text;
                Session["email"] = email.Text;
                Session["passport"] = passport.Text;
                Session["phone"] = phone.Text;
                Session["mr"] = DropDownList1.SelectedItem;
                Session["hos"] = Request.QueryString["Hos"].ToString();
                Session["Date"] = Request.QueryString["Date"].ToString();
                Session["Time"] = Request.QueryString["Time"].ToString();
                Session["doctor"] = Request.QueryString["Doc"].ToString();
                Session["cou"] = Request.QueryString["cou"].ToString();
                Session["spe"] = Request.QueryString["spe"].ToString();
                Session["rad"] = rad;
                Server.Transfer("BookP2.aspx");

            }
            else
            {
                Response.Write("<script>alert('Data not saved invalid data');</script>");
            }


        }
    }
}