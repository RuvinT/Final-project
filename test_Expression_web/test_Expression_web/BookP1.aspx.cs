using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test_Expression_web
{
    public partial class BookP1 : System.Web.UI.Page
    {
        String rad;
        protected void Page_Load(object sender, EventArgs e)
        {
            doctor.Text = Request.QueryString["Doc"].ToString();

            hospital.Text = Request.QueryString["Hos"].ToString();
            date.Text = Request.QueryString["Date"].ToString();
            time.Text = Request.QueryString["Time"].ToString();
            time1.Text = Request.QueryString["Time"].ToString();
            number.Text = Request.QueryString["cou"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
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
            Session["rad"] = rad;
            Server.Transfer("BookP2.aspx");




        }
    }
}