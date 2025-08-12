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
    public partial class Changepassword : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Admin values('" + txtusername.Text + "','" + txtpassword.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'> alert('Password submitted successfully!!')</Script>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtusername.Text = GridView1.SelectedRow.Cells[1].Text;
            txtpassword.Text = GridView1.SelectedRow.Cells[2].Text;
        }

        protected void btnchangepass_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "update Admin set adminpassword='" + txtpassword.Text + "' where adminname='" + txtusername.Text + "'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            ClientScript.RegisterStartupScript(Page.GetType(),"Change Password","<scrip language='javascript'> alert('Password changed successfully!!!')</script>");

            txtusername.Text = "";
            txtpassword.Text = "";
            txtconfirmpassword.Text = "";
        }
    }
}