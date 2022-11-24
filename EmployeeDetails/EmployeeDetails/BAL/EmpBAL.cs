using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EmployeeDetails.BAL
{
    public class EmpBAL
    {
        DAL.EmpDAL objdeptdl = new DAL.EmpDAL();
        private int _empid;
        private string _empname;
        private string _empemail;
        private string _empphn;
        private int _empage;

        public int empid
        {
            get
            {
                return _empid;
            }
            set
            {
                _empid = value;
            }
        }
        public string empname
        {
            get
            {
                return _empname;
            }
            set
            {
                _empname = value;
            }
        }

        public string empemail
        {
            get
            {
                return _empemail;
            }
            set
            {
                _empemail = value;
            }
        }
        public string empphn
        {
            get
            {
                return _empphn;
            }
            set
            {
                _empphn = value;
            }
        }
        public int empage
        {
            get
            {
                return _empage;
            }
            set
            {
                _empage = value;
            }
        }

        public int insertEmployees()
        {
            return objdeptdl.insert_Employees(this);
        }

        public DataTable viewEmployees()
        {
            return objdeptdl.view_Employees();
        }

        public int updateEmployees()
        {
            return objdeptdl.Update_Employees(this);
        }
        public int deleteEmployees()
        {
            return objdeptdl.Delete_Employees(this);
        }
    }
}