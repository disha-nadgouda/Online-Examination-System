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
    public partial class Enquiry : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Enquiry values('"+txtseatno.Text+"','"+txtname.Text+"','"+drbcourse.Text+"','"+drbfaculty.Text+"','"+drbclass.Text+"','"+drbsubject.Text+"','"+txtemail.Text+"',"+txtcontact.Text+",'"+txtmessage.Text+"')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'> alert('Enquiry submitted successfully!!')</Script>");
        }

        protected void txtsubject_TextChanged(object sender, EventArgs e)
        {

        }
    }
}