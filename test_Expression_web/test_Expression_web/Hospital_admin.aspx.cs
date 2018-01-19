using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test_Expression_web
{
    public partial class Hospital_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void insert_click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["DoctorID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T1")).Text;
            SqlDataSource1.InsertParameters["Specification"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T2")).Text;
            SqlDataSource1.InsertParameters["DoctorName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T3")).Text;
            SqlDataSource1.InsertParameters["Date"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T4")).Text;
            SqlDataSource1.InsertParameters["Time"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T5")).Text;
           
            SqlDataSource1.InsertParameters["Hospital"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T6")).Text;
            SqlDataSource1.InsertParameters["MaxPacients"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T7")).Text;
            SqlDataSource1.InsertParameters["PacientNumber"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T8")).Text;
            SqlDataSource1.InsertParameters["RoomNumber"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T9")).Text;
            SqlDataSource1.InsertParameters["TP"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("T10")).Text;
            SqlDataSource1.Insert();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}