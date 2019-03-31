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
    public partial class Reception : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelPasswordIncorrect.Visible = true;
        }

        protected void BRecepSignIn_Click(object sender, EventArgs e)
        {
            var connection = new SqlConnection(ConfigurationManager.ConnectionStrings[@"HiltonHotelConnectionString"].ConnectionString);
            connection.Open();
            var usernameQuery = "select count(*) from EmployeeLogin where username='" + TRecepUserName.Text + "' ";
            var Usercommand = new SqlCommand(usernameQuery, connection);
            var temp = Convert.ToInt32(Usercommand.ExecuteScalar().ToString());
            connection.Close();

            if (temp == 1)
            {
                connection.Open();
                var passwordQuery = "select password from EmployeeLogin where username='" + TRecepUserName.Text + "'";
                var Passwordcommand = new SqlCommand(passwordQuery, connection);
                Passwordcommand.CommandType = System.Data.CommandType.Text;
                var dataReader = Passwordcommand.ExecuteReader();
                string Password = "0";

                while (dataReader.Read())
                {
                    Password = dataReader["password"].ToString().Replace(" ", "");
                }


                if (Password == TRecepPassword.Text)
                {
                    Response.Redirect("ReceptionMainPage.aspx");
                    Response.Write("<script language=javascript>alert('Welcome " + TRecepUserName.Text + "');</script>");
                }
                else
                {
                    LabelPasswordIncorrect.Visible = true;
                    LabelPasswordIncorrect.Text = "Please Enter Correct Password";
                }

                connection.Close();
            }
            else
            {
                LabelPasswordIncorrect.Visible = true;
                LabelPasswordIncorrect.Text = "Username Not Valid!";
            }

        }
    }
}