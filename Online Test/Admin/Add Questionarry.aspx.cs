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
    public partial class Add_Questionarry : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security = True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void drbclass_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drbclass.Text == "FY BCS")
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
                drbsubject.Items.Add("Graph Theory");
                drbsubject.Items.Add("Calculus");
                drbsubject.Items.Add("Electronic Devices and Circuits-II");
                drbsubject.Items.Add("Digital Electronics-II");
                drbsubject.Items.Add("Descriptive Statistics-II");
                drbsubject.Items.Add("Continuous Probability Distribution and Testing of Hypothesis");
                drbsubject.Items.Add("Introduction to Computer and Data Processing -II");
                drbsubject.Items.Add("Introduction to Programming using C -II");
            }
            if (drbclass.Text == "SY BCS")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Relational Database Management System");
                drbsubject.Items.Add("Object Oriented Programming usin C++");
                drbsubject.Items.Add("Computer Organization");
                drbsubject.Items.Add("Computer Instrumentation");
                drbsubject.Items.Add("Linear Algebra");
                drbsubject.Items.Add("Numerical Methods");
                drbsubject.Items.Add("Data Structure using C++");
                drbsubject.Items.Add("Cyber Security Essentials");
                drbsubject.Items.Add("Microcontroller Architecture and Programming");
                drbsubject.Items.Add("Communication Techniques");
                drbsubject.Items.Add("Computational Geometry");
                drbsubject.Items.Add("Operational Research");
            }
            if (drbclass.Text == "TY BCS")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Core Java");
                drbsubject.Items.Add("C# Programming");
                drbsubject.Items.Add("Software Engineering");
                drbsubject.Items.Add("Machine Learning Part-I");
                drbsubject.Items.Add("Advanced Java");
                drbsubject.Items.Add("ASP.Net");
                drbsubject.Items.Add("Software Project Management");
                drbsubject.Items.Add("Machine Learning Part-II");
            }
        }

        protected void btnnew_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "select count(questionid) from Questionary";
            cmd.Connection = cn;
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            n++;
            txtid.Text = n.ToString();
            cn.Close();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "insert into Questionary values('" + drbstream.Text + "','" + drbsubject.Text + "','" + drbclass.Text + "'," + txtid.Text + ",'" + txtquestion.Text + "','" + txtanswer.Text + "','" + txtmarks.Text + "','" + txtA.Text + "','" + txtB.Text + "','" + txtC.Text + "','" + txtD.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'> alert('Question Saved successfully!!!')</script>");
            GridView1.DataBind();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "update Questionary set subjectstream='" + drbstream.Text + "',subjectcode='" + drbsubject.Text + "',classname='" + drbclass.Text + "',question='" + txtquestion.Text + "',answer='" + txtanswer.Text + "',mark='" + txtmarks.Text + "',optionA='" + txtA.Text + "',optionB='" + txtB.Text + "',optionC='" + txtC.Text + "',optionD='" + txtD.Text + "' where questionid='" + txtid.Text + "'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<scrip language='javascript'> alert('Question Updated successfully!!!')</script>");
            GridView1.DataBind();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "delete from Questionary where questionid=" + txtid.Text + "";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<scrip language='javascript'> alert('Question Deleted successfully!!!')</script>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            drbstream.Text = GridView1.SelectedRow.Cells[1].Text;


            if (drbclass.Text == "FY BCS")
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
                drbsubject.Items.Add("Graph Theory");
                drbsubject.Items.Add("Calculus");
                drbsubject.Items.Add("Electronic Devices and Circuits-II");
                drbsubject.Items.Add("Digital Electronics-II");
                drbsubject.Items.Add("Descriptive Statistics-II");
                drbsubject.Items.Add("Continuous Probability Distribution and Testing of Hypothesis");
                drbsubject.Items.Add("Introduction to Computer and Data Processing -II");
                drbsubject.Items.Add("Introduction to Programming using C -II");
            }
            if (drbclass.Text == "SY BCS")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Relational Database Management System");
                drbsubject.Items.Add("Object Oriented Programming usin C++");
                drbsubject.Items.Add("Computer Organization");
                drbsubject.Items.Add("Computer Instrumentation");
                drbsubject.Items.Add("Linear Algebra");
                drbsubject.Items.Add("Numerical Methods");
                drbsubject.Items.Add("Data Structure using C++");
                drbsubject.Items.Add("Cyber Security Essentials");
                drbsubject.Items.Add("Microcontroller Architecture and Programming");
                drbsubject.Items.Add("Communication Techniques");
                drbsubject.Items.Add("Computational Geometry");
                drbsubject.Items.Add("Operational Research");
            }
            if (drbclass.Text == "TY BCS")
            {
                drbsubject.Items.Clear();
                drbsubject.Items.Add("Core Java");
                drbsubject.Items.Add("C# Programming");
                drbsubject.Items.Add("Software Engineering");
                drbsubject.Items.Add("Machine Learning Part-I");
                drbsubject.Items.Add("Advanced Java");
                drbsubject.Items.Add("ASP.Net");
                drbsubject.Items.Add("Software Project Management");
                drbsubject.Items.Add("Machine Learning Part-II");
            }


            //drbsubject.Text = GridView1.SelectedRow.Cells[2].Text;
            drbclass.Text = GridView1.SelectedRow.Cells[3].Text;
            txtid.Text = GridView1.SelectedRow.Cells[4].Text;
            txtquestion.Text = GridView1.SelectedRow.Cells[5].Text;
            txtanswer.Text = GridView1.SelectedRow.Cells[6].Text;
            txtmarks.Text = GridView1.SelectedRow.Cells[7].Text;
            txtA.Text = GridView1.SelectedRow.Cells[8].Text;
            txtB.Text = GridView1.SelectedRow.Cells[9].Text;
            txtC.Text = GridView1.SelectedRow.Cells[10].Text;
            txtD.Text = GridView1.SelectedRow.Cells[11].Text;
        }
    }
}