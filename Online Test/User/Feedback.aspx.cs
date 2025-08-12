using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Test.User
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Feedback values('" + txtname.Text + "','" + txtemail.Text + "'," + txtcontactno.Text + ",'" + txtsubject.Text + "','" + txtfeedbackmessage.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "SUBMIT", "<Script language='javascript'> alert('Feedback submitted successfully!!')</Script>");
        }
    }
}