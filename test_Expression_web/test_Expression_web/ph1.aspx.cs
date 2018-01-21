using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test_Expression_web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["DrugBrand"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("txtDrugBrand")).Text;

            SqlDataSource1.InsertParameters["DrugName"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("txtDrugName")).Text;

            SqlDataSource1.InsertParameters["DrugCount"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("txtDrugCount")).Text;

            SqlDataSource1.InsertParameters["Available"].DefaultValue =
            ((DropDownList)GridView1.FooterRow.FindControl("ddlAvailable")).SelectedValue;

            SqlDataSource1.Insert();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}