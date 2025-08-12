using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data;
using System.Data.SqlClient;

namespace Online_Test.Report
{
    public partial class datewisereport : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Online Test\Online Test\App_Data\OnlineTest.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        ReportDocument crpt = new ReportDocument();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Examdetails where examdate between '"+txtfromdate.Text+"' and '"+txttodate.Text+"'",cn   );
            da.Fill(ds,"Examdetails");
            da.Fill(ds);
            crpt.Load(Server.MapPath(@"~\Report\AddExam.rpt"));
            crpt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = crpt;
            crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat,Response,false,"Examdetails");
            crpt.Refresh();
            cn.Close();
        }
    }
}