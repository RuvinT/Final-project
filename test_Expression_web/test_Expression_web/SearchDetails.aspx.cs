using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;

namespace test_Expression_web
{
    public partial class SearchDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Request.QueryString["Doc"].ToString();

           Label1.Text = Request.QueryString["Hos"].ToString();
            Label3.Text = Request.QueryString["Spe"].ToString();
            HosName.Text = Request.QueryString["Hos"].ToString();
            DataSet ds = GetData1();


            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }


        private DataSet GetData1()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString))
            {


                SqlDataAdapter da = new SqlDataAdapter("SELECT Date,Specification,Time,DoctorName,Hospital,COUNT(*) AS CountOf FROM DocSedule WHERE DoctorName ='" + Request.QueryString["Doc"].ToString() + "' AND Hospital='" + Request.QueryString["Hos"].ToString() + "' GROUP BY Date,Time,DoctorName,Hospital,Specification ", con);

                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;


            }
        }
    }
}