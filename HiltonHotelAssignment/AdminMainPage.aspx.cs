using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HiltonHotelAssignment
{
    public partial class AdminMainPageaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IBAddEmployee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }

        protected void IBCustomerDetails_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CustomerDetailAdmin.aspx");
        }

        protected void IBModifyRoom_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ModifyRoomDetails.aspx");
        }

        protected void IBReports_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Reports.aspx");
        }
    }
}