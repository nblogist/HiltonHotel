using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HiltonHotelAssignment
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LEmployeeAdd.Visible = false;
        }

        protected void BAdminSignIn_Click(object sender, EventArgs e)
        {
            var connection = new SqlConnection(ConfigurationManager.ConnectionStrings[@"HiltonHotelConnectionString"].ConnectionString);
            connection.Open();
            var EmployeeQuery = "insert into Employee (Name,NIC) values ('" + TName.Text + "','" + TNIC.Text + "')";
            var Usercommand = new SqlCommand(EmployeeQuery, connection);
            Usercommand.ExecuteNonQuery();
            var EmployeeLoginQuery = "insert into EmployeeLogin (username,password)values('" + TUsername.Text + "','" + TPassword.Text + "')";
            var Command = new SqlCommand(EmployeeLoginQuery, connection);
            Command.ExecuteNonQuery();
            connection.Close();
            LEmployeeAdd.Visible = true;
        }
    }
}