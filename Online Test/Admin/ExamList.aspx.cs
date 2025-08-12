using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Test.Admin
{
    public partial class ExamList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblexamid.Text = GridView1.SelectedRow.Cells[1].Text;
            lblcourse.Text = GridView1.SelectedRow.Cells[2].Text;
            lblsubject.Text = GridView1.SelectedRow.Cells[3].Text;
            lblclass.Text = GridView1.SelectedRow.Cells[4].Text;
            lbldate.Text = GridView1.SelectedRow.Cells[5].Text;
        }
    }
}