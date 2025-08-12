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
    
    public partial class StudentLogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "select username,password from Student where username='"+txtusername.Text +"'and password='"+txtpassward.Text +"'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            da.SelectCommand = cmd;
            da.Fill(dt);
            string a = txtusername.Text;
            if (dt.Rows.Count > 0)
            {
               // ClientScript.RegisterStartupScript(Page.GetType(), "LOGIN", "<Script language='javascript'> alert('Login successful')</Script>");
                Session["Student"] = txtusername.Text;
                Response.Redirect("~/Student/home.aspx");
            }
                
            else
                ClientScript.RegisterStartupScript(Page.GetType(),"ERROR", "<Script language='javascript'> alert('Incorrect username or password!!')</Script>");
        }

    }
}