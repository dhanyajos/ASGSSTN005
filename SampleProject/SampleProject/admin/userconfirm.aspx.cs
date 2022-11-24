using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleProject.admin
{
    public partial class userconfirm : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                db.fillgrid("select s.*,l.* from tblUser s inner join Log l on s.lid=l.lid where l.status='Not confirmed' and type='user'", GridView1);
            }

        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            string s = GridView1.DataKeys[e.RowIndex].Value.ToString();

            db.exenonquery("update Log set status='confirmed' where lid=" + s + "");
            db.fillgrid("select s.*,l.* from tblUser s inner join Log l on s.lid=l.lid where l.status='Not confirmed' and type='user'", GridView1);

        }
    }
}