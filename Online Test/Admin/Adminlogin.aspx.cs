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
    public partial class Adminlogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             }

        protected void Button2_Click(object sender, EventArgs e)
        {
                   }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "select adminname,adminpassword from Admin where adminname='" + txtadmin.Text  + "'and adminpassword='" + txtpassward.Text  + "'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            da.SelectCommand = cmd;
            da.Fill(dt);
            string a = txtadmin.Text ;
            if (dt.Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "LOGIN", "<Script language='javascript'> alert('Login successful')</Script>");
                Session["Admin"] = txtadmin.Text ;
                Response.Redirect("~/Admin/Adminhome.aspx");
            }

            else
                ClientScript.RegisterStartupScript(Page.GetType(), "ERROR", "<Script language='javascript'> alert('Incorrect username and password!!')</Script>");

        }
    }
}