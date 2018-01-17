using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace test_Expression_web
{
    public partial class Health_pack_front : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextDate_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextName.Text == "")
                Response.Write("<script>alert('Please Enter Name');</script>");
            else
            {
                Server.Transfer("Hospital_select.aspx");
            }
        }
    }
}