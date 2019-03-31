using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HiltonHotelAssignment
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BAdminSignIn_Click(object sender, EventArgs e)
        {
            //THIS ALL JUST TO VERIFY USERNAME AND PASSWORD FROM DB now run
            //Data Source=LENOVO-PC\SQLEXPRESS;Initial Catalog=HiltonHotel;Integrated Security=True;Pooling=False
            var connection = new SqlConnection(ConfigurationManager.ConnectionStrings[@"HiltonHotelConnectionString"].ConnectionString);
            connection.Open();
            var usernameQuery = "select count(*) from AdminLogin where username='" + TAdminUserName.Text + "' ";
            var Usercommand = new SqlCommand(usernameQuery, connection);
            var temp = Convert.ToInt32(Usercommand.ExecuteScalar().ToString());
            connection.Close();

            if (temp == 1)
            {
                connection.Open();
                var passwordQuery = "select password from AdminLogin where username='" + TAdminUserName.Text + "'";
                var Passwordcommand = new SqlCommand(passwordQuery, connection);
                Passwordcommand.CommandType = System.Data.CommandType.Text;
                var dataReader = Passwordcommand.ExecuteReader();
                string Password="0";
                
                while (dataReader.Read())
                {
                    Password = dataReader["password"].ToString().Replace(" ","");
                }


                if (Password == TAdminPassword.Text)
                {
                    Response.Redirect("AdminMainPage.aspx");
                    Response.Write("<script language=javascript>alert('Welcome " + TAdminUserName.Text + "');</script>");
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