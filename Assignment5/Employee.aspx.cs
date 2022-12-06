using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5
{
    public partial class Employee : System.Web.UI.Page
    {
        BAL.EmployeeBAL objdept = new BAL.EmployeeBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = objdept.viewEmployees();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = objdept.viewEmployees();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox txt = new TextBox();
            txt = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];
            objdept.empid = id;
            objdept.empname = txt.Text;
            TextBox email = new TextBox();
            email = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
            objdept.empemail = email.Text;

            TextBox phn = new TextBox();
            phn = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            objdept.empphone = phn.Text;
            TextBox age = new TextBox();
            age = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
            objdept.empage = Convert.ToInt32(age.Text);
            objdept.updateEmployees();
            GridView1.EditIndex = -1;
            GridView1.DataSource = objdept.viewEmployees();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

            objdept.empid = id;

            int i = objdept.deleteEmployees();

            GridView1.DataSource = objdept.viewEmployees();
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = objdept.viewEmployees();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objdept.empname = TextBox1.Text;
            objdept.empemail = TextBox2.Text;
            objdept.empphone = TextBox3.Text;
            objdept.empage = Convert.ToInt32(TextBox4.Text);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            int i = objdept.insertEmployees();

            GridView1.DataSource = objdept.viewEmployees();
            GridView1.DataBind();

        }
    }
}