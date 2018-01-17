using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test_Expression_web
{
    public partial class BookP2 : System.Web.UI.Page
    {
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

        }
    }
}