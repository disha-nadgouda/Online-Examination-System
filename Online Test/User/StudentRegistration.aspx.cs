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
    public partial class StudentRegistration : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "select count(studentid) from Student";
            cmd.Connection = cn;
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            n++;
            txtid.Text = n.ToString();
            cn.Close();
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Student values('"+txtseatno.Text+"','"+txtstudname.Text+"',"+txtrollnumber.Text+",'"+drbcourse.Text+"','"+txtfaculty.Text+"','"+drbclass.Text+"','"+txtdob.Text+"',@p1,'"+txtemail.Text+"',"+txtcontact.Text+",'"+txtmothername.Text+"','"+txtadhar.Text+"','"+txtaddress.Text+"','"+Image2.ImageUrl+"','"+Image3.ImageUrl+"','"+txtusername.Text+"','"+txtpass.Text+"',"+txtid.Text+")";
            if (rbfemale.Checked == true)
                cmd.Parameters.AddWithValue("@p1", rbfemale.Text);
            else
                cmd.Parameters.AddWithValue("@p1",rbmale.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'> alert('Registration submitted successfully!!')</Script>");
        }

        protected void btnuploadphoto_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile == true)
            {
                FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
                Image2.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
            }
           
        }
        

        protected void btnuploadsignature_Click1(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile == true)
            {
                FileUpload2.SaveAs(Server.MapPath("~\\Images\\" + FileUpload2.FileName));
                Image3.ImageUrl = "~\\Images\\" + FileUpload2.FileName;
            }

        }

    }
}