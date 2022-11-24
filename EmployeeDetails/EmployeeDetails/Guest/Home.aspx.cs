using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeDetails
{
    public partial class Home : System.Web.UI.Page
    {

        BAL.EmpBAL objdptbl = new BAL.EmpBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = objdptbl.viewEmployees();
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            objdptbl.empname = TextBox1.Text;
            objdptbl.empemail = TextBox2.Text;
            objdptbl.empphn = TextBox3.Text;
            objdptbl.empage = Convert.ToInt32(TextBox4.Text);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            int i = objdptbl.insertEmployees();
            
            GridView1.DataSource = objdptbl.viewEmployees();
            GridView1.DataBind();
           
        }

      
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

            objdptbl.empid = id;

            int i = objdptbl.deleteEmployees();

            GridView1.DataSource = objdptbl.viewEmployees();
            GridView1.DataBind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = objdptbl.viewEmployees();
            GridView1.DataBind();
        }

       
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = objdptbl.viewEmployees();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
          

            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox txt = new TextBox();
            txt = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];
            objdptbl.empid = id;
            objdptbl.empname = txt.Text;
            TextBox email = new TextBox();
            email = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
            objdptbl.empemail = email.Text;

            TextBox phn = new TextBox();
            phn = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            objdptbl.empphn = phn.Text;

            TextBox age = new TextBox();
            age = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
            objdptbl.empage = Convert.ToInt32(age.Text);
            objdptbl.updateEmployees();
            GridView1.EditIndex = -1;
            GridView1.DataSource = objdptbl.viewEmployees();
            GridView1.DataBind();
        }
    }
}