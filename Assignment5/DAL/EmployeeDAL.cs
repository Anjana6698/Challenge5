using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Assignment5.DAL
{
    public class EmployeeDAL
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public EmployeeDAL()
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
        public int insert_Employees(BAL.EmployeeBAL obj)
        {
            string qry = "insert into Employe values('" + obj.empname + "','" + obj.empemail + "','" + obj.empphone + "','" + obj.empage + "')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public DataTable view_Employees()
        {
            string qry = "select * from Employe";
            SqlCommand cmd = new SqlCommand(qry, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int Update_Employees(BAL.EmployeeBAL obj)
        {
            string s = "update Employe set empname='" + obj.empname + "',empemail='" + obj.empemail + "',empphone='" + obj.empphone + "',empage='" + obj.empage + "' where empid='" + obj.empid + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }

        public int Delete_Employees(BAL.EmployeeBAL obj)
        {
            string s = "Delete from Employe where empid='" + obj.empid + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();
        }

    }
}