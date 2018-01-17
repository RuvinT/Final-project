using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace test_Expression_web
{
    /// <summary>
    /// Summary description for ConsultantHandler
    /// </summary>
    public class ConsultantHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string term = context.Request["term"] ?? "";
            List<string> listDoctorNames = new List<string>();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HealthPackConnectionString"].ConnectionString))
            {


                SqlCommand cmd = new SqlCommand("stGetDoctorNames", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter()
                {  ParameterName="@term" ,
                       Value=term


                }
                    
                    );
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    listDoctorNames.Add(rdr["DoctorName"].ToString());
                }

            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.Write(js.Serialize(listDoctorNames));
            
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}