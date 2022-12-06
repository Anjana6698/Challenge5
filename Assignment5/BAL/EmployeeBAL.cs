using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Assignment5.BAL
{
    public class EmployeeBAL
    {
        DAL.EmployeeDAL objdept = new DAL.EmployeeDAL();
        private int _empid;
        private string _empname;
        private string _empemail;
        private string _empphone;
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
        public string empphone
        {
            get
            {
                return _empphone;
            }
            set
            {
                _empphone = value;
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
            return objdept.insert_Employees(this);
        }

        public DataTable viewEmployees()
        {
            return objdept.view_Employees();
        }

        public int updateEmployees()
        {
            return objdept.Update_Employees(this);
        }
        public int deleteEmployees()
        {
            return objdept.Delete_Employees(this);
        }
    }
}
