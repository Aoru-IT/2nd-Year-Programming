using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alonzo_ASP1
{
    public partial class OutputPage : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            idOutput1.Text = Session["StudentID"] as String;
            nameOutput1.Text = Session["StudentName"] as String;
            courseOutput1.Text = Session["Course"] as String;
        
            Processor();
        }

        void Processor() {

            int ratePerUnit = 0;
            double downPayment = 0;

            switch ((int)Session["CourseIndex"])
            {
                case 1:
                    ratePerUnit = 1500;
                    break;
                case 2:
                    ratePerUnit = 1400;
                    break;
                case 3:
                    ratePerUnit = 1250;
                    break;
                case 4:
                    ratePerUnit = 1100;
                    break;
                case 5:
                    ratePerUnit = 950;
                    break;
            }

            switch ((int)Session["DownPayment"])
            {
                case 0:
                    downPayment = 0.40;
                    break;
                case 1:
                    downPayment = 0.50;
                    break;
                case 2:
                    downPayment = 1;
                    break;
            }
 
            int parsedEnrolledUnits = Convert.ToInt32(Session["UnitsEnrolled"]);
            int tuitionFee = ratePerUnit * parsedEnrolledUnits;
            double currentDownPayment = tuitionFee * downPayment;
            double totalBalance = tuitionFee - currentDownPayment;

            tuitionOutput1.Text = tuitionFee.ToString();
            downPaymentOutput1.Text = currentDownPayment.ToString();
            totalBalanceOutput1.Text = totalBalance.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Returnee"] = true;
            Response.Redirect("Alonzo_ASPEa1.aspx");
        }
    }
}