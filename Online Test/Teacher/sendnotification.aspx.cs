using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Test.Teacher
{
    public partial class sendnotification : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "select count(notificationid) from StudentNotification";
            cmd.Connection = cn;
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            n++;
            txtid.Text = n.ToString();
            cn.Close();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into StudentNotification values('"+txtid.Text+"','"+txtdate.Text+"','"+drbclass.Text+"','"+txtmessage.Text+"')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'> alert('Notification send to student successfully!!')</Script>");
        }
    }
}