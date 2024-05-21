
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using DataHelper;

namespace Alonzo_LongQuiz
{
    public partial class GenerateReport : System.Web.UI.Page
    {
        DataAccess myData = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if (!IsPostBack)
            {

                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource rds = new ReportDataSource("ReportDataSet", myData.ViewAll().Tables["ViewAll"]);
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
                ReportViewer1.LocalReport.DataSources.Add(rds);
                ReportViewer1.LocalReport.Refresh();
            }*/
        }
    }
}