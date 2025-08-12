using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Test.Student
{
    public partial class Feedback : System.Web.UI.Page
    {
        


        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtname.Text = Session["Student"].ToString();
            cn.Open();
            cmd.CommandText = "Select email  from Student where username='"+txtname.Text+"' ";
            cmd.Connection = cn;
            txtemail.Text = Convert.ToString(cmd.ExecuteScalar());

            cmd.CommandText = "Select contact_no  from Student where username='"+txtname.Text+"' ";
            cmd.Connection = cn;
            txtcontactno.Text = Convert.ToString(cmd.ExecuteScalar());
            cn.Close();
        }

       

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Feedback values('" + txtname.Text + "','" + txtemail.Text + "'," + txtcontactno.Text + ",'" + drbsubject.Text + "','" + txtfeedbackmessage.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "SUBMIT", "<Script language='javascript'> alert('Feedback submitted successfully!!')</Script>");

        }
    }
}