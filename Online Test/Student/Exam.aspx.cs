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
    public partial class Exam : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        int m1;
        static int total;
        string sub, sem, course, examid, class1, date1, eid, answ;
        string s, mark;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblexamdate.Text = System.DateTime.Now.ToShortDateString();
           
            lblsubject.Text = Session["Subject"].ToString();
            lblsname.Text = Session["Student"].ToString();
            lblstarttime.Text = Session["starttime"].ToString ();
        }

        protected void btnstart_Click(object sender, EventArgs e)
        {
           // Session["esubject"] = drbsubject.Text;
         //   Session["edate"] = drbdate.Text;
          //  Session["ename"] = drbexam.Text;
           // Response.Redirect("~/Student/Exam View.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string p1, p2, p3, p4;
            p1 = Session["class"].ToString();
            p2 = Session["subject"].ToString();
            p3 = System.DateTime.Now.ToShortDateString();
            string name = Session["Student"].ToString();

            cn.Open();
            cmd.CommandText = "select count(examinitionid) from Examination";
            cmd.Connection = cn;
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            n++;
            
            cn.Close();



            cn.Open();
            cmd.CommandText = "select sum(mark)  from examcart";
            cmd.Connection = cn;
            string m = cmd.ExecuteScalar().ToString();
            
            Label3.Text = m.ToString();
            cn.Close();


            cn.Open();
            cmd.CommandText = "insert into Examination values(" + n + ",'" + name + "','" + p1 + "','" + p2 + "','" + p3+ "',"+Label3.Text +")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<Script language='javascript'> alert('Exam Submitted Sucessfully!')</Script>");
            //   Label3.Text = total.ToString();

            cn.Open();
            cmd.CommandText = "delete from examcart";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();

            lblendtime.Text = System.DateTime.Now.ToLongTimeString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //retrive answer 
            
            
            int count = DataList9.Items.Count;
            for (int i = 0; i < count; i++)
            {
               // Button btn = sender as Button;
               // int j = Convert.ToInt32(btn.CommandArgument);
                Label lblcourse = DataList9.Items[i].FindControl("courseLabel") as Label;
                course = lblcourse.Text;
                Label lblclass = DataList9.Items[i].FindControl("classLabel") as Label;
                class1 = lblclass.Text;
              //  TextBox txtans = DataList9.Items[i].FindControl("txtans") as TextBox;
            }

            int count1 = DataList10.Items.Count;
            for (int i = 0; i < count1; i++)
            {
                // Button btn = sender as Button;
                // int j = Convert.ToInt32(btn.CommandArgument);
                Label lblid= DataList10.Items[i].FindControl("lblexamid") as Label;
                examid = lblid.Text;
                Label lblexam = DataList10.Items[i].FindControl("examsubjectLabel") as Label;
                sub = lblexam.Text;
                Label lbldate = DataList10.Items[i].FindControl("examdateLabel") as Label;
                date1 = lbldate.Text;
                //  TextBox txtans = DataList9.Items[i].FindControl("txtans") as TextBox;
            }
            int count2 = DataList2.Items.Count;
            for (int i = 0; i < count2; i++)
            {
                // Button btn = sender as Button;
                // int j = Convert.ToInt32(btn.CommandArgument);
                //Label eid1 = DataList2.Items[i].FindControl("lblexamid") as Label;
               // eid = eid1.Text;
                Label ans = DataList2.Items[i].FindControl("Label2") as Label;

                Button btn = sender as Button;

                int n = Convert.ToInt32(btn.CommandArgument);
                cn.Open();
                cmd.CommandText = "select answer  from Questionary where questionid=" + n + "";
                cmd.Connection = cn;
                string  m = cmd.ExecuteScalar().ToString ();
                // n++;
                ans.Text = m.ToString();
                cn.Close();
                answ = ans.Text;

                RadioButton   a1= DataList2.Items[i].FindControl("RadioButton1") as RadioButton ;
                RadioButton a2 = DataList2.Items[i].FindControl("RadioButton2") as RadioButton;
                RadioButton a3 = DataList2.Items[i].FindControl("RadioButton3") as RadioButton;
                RadioButton a4 = DataList2.Items[i].FindControl("RadioButton4") as RadioButton;
                if (a1.Checked == true)
                    s = a1.Text;
                if (a2.Checked == true)
                    s = a2.Text;
                if (a3.Checked == true)
                    s = a3.Text;
                if (a4.Checked == true)
                    s = a4.Text;

                string s1 = s.ToString ();


                Label ans1 = DataList2.Items[i].FindControl("Label5") as Label;
               // Label6.Text = ans1.ToString ();


                if (s1 == answ)

                    mark = "1";
                else
                    mark = "0";
                 m1 = Convert.ToInt32(mark);


                



                
                total = total + m1;
                
            }

            cn.Open();
            cmd.CommandText = "insert into examcart values(" + examid + "," + m1 + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();


            cn.Close();






            //insert into examinition table
        }
    }
}