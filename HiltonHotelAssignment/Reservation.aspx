<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="HiltonHotelAssignment.Reservation" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Reserve Rooms</title>
      <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: -24px;
        }
        html {
  background: #95a5a6;
  background-image: url(https://i.pinimg.com/originals/28/d5/76/28d5761c4b70838bc545949451b13f9e.jpg);
  font-family: 'Helvetica Neue', Arial, Sans-Serif;
}
        .auto-style2 {
            width: 190px;
            text-align: center;
            font-weight: 700;
        }
        .auto-style4 {
            width: 190px;
            height: 44px;
            text-align: center;
        }
        .auto-style6 {
            height: 44px;
            width: 195px;
        }
        .auto-style7 {
            width: 190px;
            height: 43px;
            text-align: center;
        }
        .auto-style9 {
            height: 43px;
            width: 195px;
        }
        .auto-style10 {
            width: 100%;
            height: 666px;
        }
        .auto-style11 {
            margin-left: 172;
        }
        .auto-style12 {
            text-decoration: underline;
            font-size: x-large;
            color: #34495E;
        }
        .auto-style13 {
            width: 190px;
            height: 22px;
            text-align: center;
        }
        .auto-style15 {
            height: 22px;
            text-align: center;
        }
        .auto-style16 {
            width: 195px;
        }
        .auto-style17 {
            height: 22px;
            width: 195px;
        }
        .auto-style18 {
            text-align: center;
            height: 31px;
        }
        .auto-style19 {
            font-size: larger;
        }
    </style>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
  <form id="ReceptionLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 700px; height:840px">
  <h2 class="auto-style19">ROOM RESERVATION</h2>
      <p>
          <table class="auto-style10">
              <tr>
                  <td class="auto-style4">
                      <strong>
                      <asp:Label ID="Label1" runat="server" Text="No of People :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style6">
                      <asp:DropDownList ID="DDNoOfPeople" runat="server" CssClass="auto-style11" Height="31px" Width="200px">
                          <asp:ListItem Value="null">Select</asp:ListItem>
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label2" runat="server" Text="Rooms Required :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TNumberOfRooms" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label3" runat="server" Text="From :"></asp:Label>
                      <asp:ImageButton ID="IBCalendar" runat="server" Height="20px" ImageUrl="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/calendar-512.png" OnClick="IBCalendar_Click" />
                      </strong>
                  </td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TReservationFrom" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                      <asp:Calendar ID="ReservationCalendar" runat="server" OnSelectionChanged="ReservationCalendar_SelectionChanged" OnVisibleMonthChanged="ReservationCalendar_VisibleMonthChanged" Visible="False"></asp:Calendar>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label4" runat="server" Text="To :"></asp:Label>
                      <asp:ImageButton ID="IBCalendarTo" runat="server" Height="20px" ImageUrl="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/calendar-512.png" OnClick="IBCalendarTo_Click" />
                      </strong>
                  </td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TReservationTo" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                      <asp:Calendar ID="ReservationCalendarTo" runat="server" OnSelectionChanged="ReservationCalendarTo_SelectionChanged" OnVisibleMonthChanged="ReservationCalendarTo_VisibleMonthChanged"></asp:Calendar>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style7">
                      <strong>
                      <asp:Label ID="Label5" runat="server" Text="Type of Room :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style9">
                      <asp:DropDownList ID="DDTypeofRooms" runat="server" Height="31px" Width="202px" AutoPostBack="True" DataSourceID="TypeOfRoom" DataTextField="RoomType" DataValueField="RoomType" OnSelectedIndexChanged="DDTypeofRooms_SelectedIndexChanged">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="TypeOfRoom" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT DISTINCT [RoomType] FROM [Rooms]"></asp:SqlDataSource>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label6" runat="server" Text="Available Rooms :"></asp:Label>
                      &nbsp;</strong></td>
                  <td class="auto-style16">
                      <asp:SqlDataSource ID="RoomData" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT [RoomNumber], [RoomType], [RoomRate] FROM [Rooms] WHERE (([RoomType] = @RoomType) AND ([ReservedStatus] = @ReservedStatus))">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="DDTypeofRooms" Name="RoomType" PropertyName="SelectedValue" Type="String" />
                              <asp:Parameter DefaultValue="False" Name="ReservedStatus" Type="Boolean" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="CustomerNICToFrom">
                          <Columns>
                              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                              <asp:BoundField DataField="ReservedTo" HeaderText="ReservedTo" SortExpression="ReservedTo" />
                              <asp:BoundField DataField="ReservedFrom" HeaderText="ReservedFrom" SortExpression="ReservedFrom" />
                              <asp:BoundField DataField="RoomNumAllotted" HeaderText="RoomNumAllotted" SortExpression="RoomNumAllotted" />
                          </Columns>
                      </asp:GridView>
                      <br />
                      <asp:SqlDataSource ID="CustomerNICToFrom" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT Reservation.ReservedTo, Reservation.ReservedFrom, Customer.CustomerID, Customer.RoomNumAllotted FROM Customer INNER JOIN Reservation ON Customer.CustomerID = Reservation.CustomerID"></asp:SqlDataSource>
                      <asp:GridView ID="GridAvailableRooms" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomNumber" DataSourceID="RoomData" OnSelectedIndexChanged="GridAvailableRooms_SelectedIndexChanged">
                          <Columns>
                              <asp:CommandField ShowSelectButton="True" />
                              <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" InsertVisible="False" ReadOnly="True" SortExpression="RoomNumber" />
                              <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                              <asp:BoundField DataField="RoomRate" HeaderText="RoomRate" SortExpression="RoomRate" />
                          </Columns>
                      </asp:GridView>
                      <br />
                      <br />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <asp:TextBox ID="TSelectedRoom" runat="server" Visible="False"></asp:TextBox>
                  </td>
                  <td class="auto-style16">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td colspan="2" class="auto-style18">
                      <strong>
                      <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="CUSTOMER'S DETAILS :"></asp:Label>
                      </strong>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label9" runat="server" Text="First Name :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TFName" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label10" runat="server" Text="Last Name :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TLName" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      CNIC #:</td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TCNIC" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label11" runat="server" Text="Email Address :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TEmail" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <strong>
                      <asp:Label ID="Label12" runat="server" Text="Address :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style16"> 
                      <asp:TextBox ID="TAddress" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style13">
                      <strong>
                      <asp:Label ID="Label13" runat="server" Text="Company Name :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style17"> 
                      <asp:TextBox ID="TCompanyName" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style13">
                      <strong>
                      <asp:Label ID="Label15" runat="server" Text="Purpose of Stay"></asp:Label>
                      : </strong>
                  </td>
                  <td class="auto-style17"> 
                      <asp:TextBox ID="TPurposeofStay" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style13">
                      <strong>
                      <asp:Label ID="Label16" runat="server" Text="Luggage Details :"></asp:Label>
                      </strong>
                  </td>
                  <td class="auto-style17"> 
                      <asp:TextBox ID="TLuggageDetails" runat="server" Height="31px" Width="200px" ></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style13">
                      &nbsp;</td>
                  <td class="auto-style17">
    <asp:Button ID="BSubmitReservation0" runat="server" Text="Submit" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="143px" align="center" OnClick="BSubmitReservation0_Click"/> 
                      </td>
              </tr>
              <tr>
                  <td class="auto-style15" colspan="2">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="LReservedSuccess" runat="server" Text="The Room Has Been Reserved !" Visible="False"></asp:Label>
                  </td>
              </tr>
          </table>
      </p>
      <div class="form" style="text-align: center">

          <br />
          <br aria-busy="True" />
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>
