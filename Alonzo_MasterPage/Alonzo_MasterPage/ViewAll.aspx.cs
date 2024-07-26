using DataHelperArL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataHelperArL;
using System.Data;

namespace Alonzo_OOP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DataTable MyDataTable = new DataTable();        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DataAccess.SignedIn)
            {
                signInRequired.Visible = false;
                GridView1.Visible = true;

                MyDataTable.Columns.Add("User Name", typeof(string));
                MyDataTable.Columns.Add("Client First Name", typeof(string));
                MyDataTable.Columns.Add("Client Last Name", typeof(string));
                MyDataTable.Columns.Add("Client Password", typeof(string));
                MyDataTable.Columns.Add("Client Type", typeof(string));

                for (int i = 0; i <= DataAccess.CustomerID.Count - 1; i++)
                {
                    MyDataTable.Rows.Add(DataAccess.CustomerID[i].ToString(),
                                DataAccess.CustomerFirstName[i].ToString(),
                                DataAccess.CustomerLastName[i].ToString(),
                                DataAccess.CustomerPassword[i].ToString(),
                                DataAccess.CustomerType[i].ToString());
                }

                GridView1.DataSource = MyDataTable;
                GridView1.DataBind();
            }
            else
            {
                signInRequired.Visible = true;
            }
        }
    }
}