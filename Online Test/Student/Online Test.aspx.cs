using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Test.Student
{
    public partial class Online_Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string s = btn.CommandArgument;
            Session["course"] = s.ToString();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string s = btn.CommandArgument;
            Session["class"] = s.ToString();


        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string s = btn.CommandArgument;
            Session["subject"] = s.ToString();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string s = System.DateTime.Now.ToLongTimeString();
            Session["starttime"] = s.ToString();
            Response.Redirect(@"~/Student/exam.aspx");
        }

        protected void Button3_Click3(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string s = btn.CommandArgument;
            Session["sem"] = s.ToString();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string s = btn.CommandArgument;
            Session["sem"] = s.ToString();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string s = btn.CommandArgument;
            Session["subject"] = s.ToString();

        }
    }
}