using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleProject.Guest
{
    public partial class loginform : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            string username = TextBox1.Text;
            string pass = TextBox3.Text;


            string sql = "select s.*,l.username,l.password,l.type,l.status from tblUser s inner join Log l on s.lid=l.lid  WHERE username='" + username + "' AND password='" + pass + "'";

            DataTable dt = db.exedatatable(sql);
            if (dt.Rows.Count > 0)
            {


                if (dt.Rows[0]["type"].ToString() == "admin")
                {
                    Response.Redirect("../admin/adminhome.aspx");
                }
                else if (dt.Rows[0]["type"].ToString() == "user")
                {
                    if (dt.Rows[0]["status"].ToString() == "confirmed")
                    {
                        Session["User_Id"] = dt.Rows[0]["User_Id"].ToString();
                       
                        Response.Redirect("../User/userlogin.aspx");
                    }
                    else if (dt.Rows[0]["status"].ToString() == "blocked")
                    {
                        Response.Write("<script>alert(' User blocked');</script>");
                    }

                    else
                    {
                        Response.Write("<script>alert(' User not verified');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }

            }
        }
    }
}
