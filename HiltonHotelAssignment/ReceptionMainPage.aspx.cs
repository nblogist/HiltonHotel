using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HiltonHotelAssignment
{
    public partial class ReceptionMainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation.aspx");
        }

        protected void BModifyReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModifyReservations.aspx");
        }

        protected void BSearchReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchingReservationRecords.aspx");
        }

        protected void BGenerateBills_Click(object sender, EventArgs e)
        {
            Response.Redirect("GenerateBill.aspx");
        }
    }
}