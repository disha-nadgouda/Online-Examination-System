using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Test.Admin
{
    public partial class SubjectAllocation : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into subjectallocation values('"+drbteacher.Text+ "','"+drbcourse.Text+"','"+drbclass.Text+"','"+drbsem.Text+"','" + drbsubject.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'> alert ('Subject Allocated successfully!!')</Script>");
        }
    }
}