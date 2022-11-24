using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeDetails
{
    public partial class test : System.Web.UI.Page
    {
        BAL.EmpBAL objdptbl = new BAL.EmpBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string _id = Request.QueryString["empid"].ToString();

            DataTable dt = objdptbl.viewEmployees();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if ((dt.Rows[i]["empid"].ToString() == _id))
                {
                    Label2.Text = dt.Rows[i]["empname"].ToString();
                    Label4.Text = dt.Rows[i]["empemail"].ToString();
                    Label6.Text = dt.Rows[i]["empphn"].ToString();
                    Label8.Text = dt.Rows[i]["empage"].ToString();
                }
            }
        }
    }
}