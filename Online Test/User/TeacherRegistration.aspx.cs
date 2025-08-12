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
    public partial class TeacherRegistration : System.Web.UI.Page
    {
        SqlConnection cn= new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "select count(teacherid) from Teacher";
            cmd.Connection = cn;
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            n++;
            txtid.Text = n.ToString();
            cn.Close();

        }

        protected void btnuploadphoto_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == true)
            {
                FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
                Image2.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Teacher values("+txtid.Text+",'"+txtname.Text+"','"+txtaddress.Text+"','"+txtemail.Text+"',"+txtcontact.Text+",'"+Image2.ImageUrl+"','"+txtusername.Text+"','"+txtpass.Text+"')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'> alert ('Registration submitted successfully!!')</Script>");
        }
    }
}