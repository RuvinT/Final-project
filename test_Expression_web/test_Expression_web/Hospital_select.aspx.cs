using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Data.SqlClient;

namespace test_Expression_web
{
   
    public partial class Hospital_select : System.Web.UI.Page
    {
        string name, hospital, speciality, date;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page lastPage = (Page)Context.Handler;
             name = ((TextBox)lastPage.FindControl("TextName")).Text;
            
             hospital = ((DropDownList)lastPage.FindControl("Hospital")).Text;

          speciality = ((DropDownList)lastPage.FindControl("Speciality")).Text;


             date = ((TextBox)lastPage.FindControl("Date")).Text;

            if (hospital == "Any Hospital") { hospital = ""; }

            if (speciality == "Any Speciality") { speciality = "";  }
           // Response.Write(speciality);
           // Response.Write(hospital);
           // Response.Write(date);
            DataSet ds = GetData1();


            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        private DataSet GetData1()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString))
            {


                SqlDataAdapter da = new SqlDataAdapter("SELECT distinct Hospital,DoctorName,Specification FROM DocSedule WHERE DoctorName ='" + name + "' AND ( LEN('" + date + "') = 0 OR Date='" + date + "' ) AND ( LEN('" + speciality + "') = 0 OR Specification='" + speciality + "' ) AND ( LEN('" + hospital + "') = 0 OR Hospital='" + hospital + "' )", con);

                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;


            }
        }
            private DataSet GetData2()
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString))
                {


                    SqlDataAdapter da = new SqlDataAdapter("SELECT Hospital FROM DocSedule WHERE DoctorName = '" + name + "' AND Date='" + date + "' AND Hospital='" + hospital+ "' ", con);

                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    return ds;


                }

            }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
    }