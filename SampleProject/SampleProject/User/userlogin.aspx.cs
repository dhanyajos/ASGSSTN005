using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleProject.User
{
    public partial class userlogin : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            int user_id = Convert.ToInt32(Session["User_Id"]);

            string sql = "select * from tblUser WHERE User_Id='" + user_id + "'";

            DataTable dt = db.exedatatable(sql);
         
             Label2.Text=  dt.Rows[0]["Name"].ToString();
             Label4.Text = dt.Rows[0]["Email"].ToString();
             Label6.Text = dt.Rows[0]["Phone"].ToString();
             Label8.Text = dt.Rows[0]["Gender"].ToString();
             Label10.Text = dt.Rows[0]["Dob"].ToString();

        }
    }
}