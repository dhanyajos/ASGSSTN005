using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EmployeeDetails.DAL
{
    public class EmpDAL
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public EmpDAL()
        {
            string conn = ConfigurationManager.ConnectionStrings["rose"].ConnectionString;
            con = new SqlConnection(conn);
            cmd.Connection = con;
        }
        public SqlConnection Getcon()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }

        public int insert_Employees(BAL.EmpBAL obj)
        {
            string qry = "insert into EmployeeTable values('" + obj.empname + "','" + obj.empemail + "','" + obj.empphn + "','" + obj.empage + "')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public DataTable view_Employees()
        {
            string qry = "select * from EmployeeTable";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int Update_Employees(BAL.EmpBAL obj)
        {
            string s = "update EmployeeTable set empname='" + obj.empname + "',empemail='" + obj.empemail + "',empphn='" + obj.empphn + "',empage='" + obj.empage + "' where empid='" + obj.empid + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public int Delete_Employees(BAL.EmpBAL obj)
        {
            string s = "Delete from EmployeeTable where empid='" + obj.empid + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }
    }
}