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
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReservationCalendar.Visible = false;
            ReservationCalendarTo.Visible = false;
        }

        protected void BSubmitReservation0_Click(object sender, EventArgs e)
        {
            //CUSTOMER SENDING IN DB IMPLEMENTATION
            var connection = new SqlConnection(ConfigurationManager.ConnectionStrings[@"HiltonHotelConnectionString"].ConnectionString);
            connection.Open();
            var name = TFName.Text + TLName.Text;
            var CustomerQuery = "insert into Customer (CustomerID,Name,Address,Email,NumofPeople,PurposeofStay,CompanyName,LuggageDetails,RoomNumAllotted) values ('"+TCNIC.Text+"','"+name+ "','" + TAddress.Text + "','" + TEmail.Text + "'," + DDNoOfPeople.Text + ",'" + TPurposeofStay.Text + "','" + TCompanyName.Text + "','" + TLuggageDetails.Text + "','"+TSelectedRoom.Text+"')";
            var ReservationQuery = "insert into Reservation (CustomerID,ReservedFrom,ReservedTo,RoomNumber) values('"+TCNIC.Text+ "','" + TReservationFrom.Text + "','" + TReservationTo.Text + "'," + TSelectedRoom.Text + ")";
            var RoomsQuery = "update Rooms Set ReservedStatus=1 where RoomNumber='"+TSelectedRoom.Text+"'";
            var Usercommand1 = new SqlCommand(CustomerQuery, connection);
            var Usercommand2 = new SqlCommand(ReservationQuery, connection);
            var Usercommand3 = new SqlCommand(RoomsQuery, connection);
            Usercommand1.ExecuteNonQuery();
            Usercommand2.ExecuteNonQuery();
            Usercommand3.ExecuteNonQuery();
            connection.Close();
            LReservedSuccess.Visible = true;
            GridView1.DataBind();
        }

        protected void IBCalendar_Click(object sender, ImageClickEventArgs e)
        {
            ReservationCalendar.Visible = true;
        }

        protected void IBCalendarTo_Click(object sender, ImageClickEventArgs e)
        {
            ReservationCalendarTo.Visible = true;
        }

        protected void ReservationCalendar_SelectionChanged(object sender, EventArgs e)
        {
            TReservationFrom.Text = ReservationCalendar.SelectedDate.ToString();
            ReservationCalendar.Visible = false;
        }

        protected void ReservationCalendarTo_SelectionChanged(object sender, EventArgs e)
        {
            TReservationTo.Text = ReservationCalendarTo.SelectedDate.ToString();
            ReservationCalendarTo.Visible = false;
        }

        protected void ReservationCalendar_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            ReservationCalendar.Visible = true;
        }

        protected void ReservationCalendarTo_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            ReservationCalendarTo.Visible = true;
        }

        protected void DDTypeofRooms_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridAvailableRooms.DataBind();
        }

        protected void GridAvailableRooms_SelectedIndexChanged(object sender, EventArgs e)
        {
            var grid = GridAvailableRooms.SelectedRow;
            TSelectedRoom.Text = grid.Cells[1].Text;
        }
    }
}