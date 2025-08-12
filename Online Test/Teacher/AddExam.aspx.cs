using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Data;
//using System.Data.SqlClient;

namespace Online_Test.Teacher
{
    public partial class AddExam : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

            txtfaculty.Text = Session["Teacher"].ToString();

            cn.Open();
            cmd.CommandText = "select count(examid) from Examdetails";
            cmd.Connection = cn;
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            n++;
            txtid.Text = n.ToString();
            cn.Close();

        }


        protected void drbclass_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }



        protected void btnaddexam_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Examdetails values (" + txtid.Text + ",'" + drbcourse.Text + "','" + drbclass.Text + "','"+drbsem.Text+"','" + drbsubject.Text + "','" + txtexamdescription.Text + "','" + txtdate.Text + "','" + txtexamduration.Text + "'," + txttotalmarks.Text + "," + txttotalquestions.Text + ",'" + txtstarttime.Text + "','" + txtexamendtime.Text + "','" + txtfaculty.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Add Exam", "<Script language='javascript'> alert('Exam added successfully!!')</Script>");
            
        }

        protected void drbsem_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* if (drbclass.Text == "FY BCS" && drbsem.Text == "SEM-I")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Discrete Mathematics");
                drbsubject.Items.Add("Algebra");
                drbsubject.Items.Add("Electronic Devices and Circuits-I");
                drbsubject.Items.Add("Digital Electronics-I");
                drbsubject.Items.Add("Descriptive Statistics-I");
                drbsubject.Items.Add("Probability and Discrete Probability Distribution");
                drbsubject.Items.Add("Introduction to Computer and Data Processing -I");
                drbsubject.Items.Add("Introduction to Programming using C -I");
            }
            if (drbclass.Text == "FY BCS" && drbsem.Text == "SEM-II")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Graph Theory");
                drbsubject.Items.Add("Calculus");
                drbsubject.Items.Add("Electronic Devices and Circuits-II");
                drbsubject.Items.Add("Digital Electronics-II");
                drbsubject.Items.Add("Descriptive Statistics-II");
                drbsubject.Items.Add("Continuous Probability Distribution and Testing of Hypothesis");
                drbsubject.Items.Add("Introduction to Computer and Data Processing -II");
                drbsubject.Items.Add("Introduction to Programming using C -II");
            }
            if (drbclass.Text == "SY BCS" && drbsem.Text == "SEM-III")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Relational Database Management System");
                drbsubject.Items.Add("Object Oriented Programming usin C++");
                drbsubject.Items.Add("Computer Organization");
                drbsubject.Items.Add("Computer Instrumentation");
                drbsubject.Items.Add("Linear Algebra");
                drbsubject.Items.Add("Numerical Methods");
            }
            if (drbclass.Text == "SY BCS" && drbsem.Text == "SEM-IV")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Data Structure using C++");
                drbsubject.Items.Add("Cyber Security Essentials");
                drbsubject.Items.Add("Microcontroller Architecture and Programming");
                drbsubject.Items.Add("Communication Techniques");
                drbsubject.Items.Add("Computational Geometry");
                drbsubject.Items.Add("Operational Research");
            }
            if (drbclass.Text == "TY BCS" && drbsem.Text == "SEM-V")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Core Java");
                drbsubject.Items.Add("C# Programming");
                drbsubject.Items.Add("Software Engineering");
                drbsubject.Items.Add("Machine Learning Part-I");
            }
            if (drbclass.Text == "TY BCS" && drbsem.Text == "SEM-VI")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Advanced Java");
                drbsubject.Items.Add("ASP.Net");
                drbsubject.Items.Add("Software Project Management");
                drbsubject.Items.Add("Machine Learning Part-II");
            }*/
        }
    }
}