using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleProject.Guest
{
    public partial class UserReg : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 31; i++)
            {
                Ddlday.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                Ddlmonth.Items.Add(i.ToString());
            }

            for (int i = 1998; i <= DateTime.Now.Year; i++)
            {
                Ddlyear.Items.Add(i.ToString());
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "Select * from tblUser where Phone='" + TextBox3.Text + "'";
            DataTable dt = db.exedatatable(sql);
            if (dt.Rows.Count > 0)
            {
                string msg = "Phone Number Already Exists";
                Labelalert.Text =msg;
            }
            else
            {

                object ob = db.exescalar("insert into Log values('" + TextBox4.Text + "','" + TextBox5.Text + "','user','Not confirmed');select @@IDENTITY");
                string gender = string.Empty;
                if (RadioButton1.Checked)
                {
                    gender = "Male";
                }
                else if (RadioButton2.Checked)
                {
                    gender = "Female";
                }
                else
                {
                    gender = "Others";
                }
                string dob = Ddlday.SelectedValue + "/" + Ddlmonth.SelectedValue + "/" + Ddlyear.SelectedValue;

                int j = db.exenonquery("insert into tblUser values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + gender + "','" + dob + "','" + ob + "')");
                if (j == 1)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('User Registered successfully');document.location='" + ResolveClientUrl("Firstform.aspx") + "';</script>");

                }
                else
                {
                    Response.Write("Failed,Try Again!");

                }
            }
        }
    }
}