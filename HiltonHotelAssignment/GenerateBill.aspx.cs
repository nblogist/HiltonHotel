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
    public partial class GenerateBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BGenerateBill_Click(object sender, EventArgs e)
        {
            RoomRateData.DataBind();
            GridTotalBill.DataBind();
            GridCustomerDetails.DataBind();
            var connection = new SqlConnection(ConfigurationManager.ConnectionStrings[@"HiltonHotelConnectionString"].ConnectionString);
            connection.Open();
            //var BillQuery = "";
            var ReservationQuery = "Update Reservation set totalbill=" +
                "(SELECT DISTINCT Rooms.RoomRate * " +
                "(SELECT DISTINCT NumofPeople FROM Customer WHERE (CustomerID = '" + DDCustomerID.SelectedValue + "'))" +
                "FROM Reservation INNER JOIN Rooms ON Reservation.RoomNumber = Rooms.RoomNumber) " +
                "WHERE Reservation.CustomerID = '" + DDCustomerID.SelectedValue+"'";
            var Usercommand1 = new SqlCommand(ReservationQuery, connection);
            //var Usercommand2 = new SqlCommand(BillQuery, connection);
            Usercommand1.ExecuteNonQuery();
            //Usercommand1.ExecuteNonQuery();
            connection.Close();
        }

        protected void DDCustomerID_SelectedIndexChanged(object sender, EventArgs e)
        {
            RoomRateData.DataBind();
        }
    }
}