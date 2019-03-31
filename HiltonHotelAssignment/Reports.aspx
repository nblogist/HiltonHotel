<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="HiltonHotelAssignment.Reports" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Hilton Hotel Reports</title>
      <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
    <style type="text/css">
        .auto-style1 {
            font-weight: 700;
            font-size: large;
        }
        .auto-style2 {
            font-weight: 700;
            font-size: large;
        }
    </style>
</head>
<body>
  <form id="AdminLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 450px; height:auto">
  <h2>Reports</h2>
  <div class="form" style="text-align: center">
      <br />
    
      <table style="width:100%;">
          <tr>
              <td>
                  <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Available Rooms"></asp:Label>
              </td>
          </tr>
          <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomNumber" DataSourceID="AvailableRooms">
                      <Columns>
                          <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" InsertVisible="False" ReadOnly="True" SortExpression="RoomNumber" />
                          <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                          <asp:CheckBoxField DataField="ReservedStatus" HeaderText="ReservedStatus" SortExpression="ReservedStatus" />
                          <asp:BoundField DataField="RoomRate" HeaderText="RoomRate" SortExpression="RoomRate" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="AvailableRooms" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT * FROM [Rooms] WHERE ([ReservedStatus] = @ReservedStatus)">
                      <SelectParameters>
                          <asp:Parameter DefaultValue="false" Name="ReservedStatus" Type="Boolean" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td>
                  <br />
                  <br />
                  <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="Reserved Rooms"></asp:Label>
              </td>
          </tr>
          <tr>
              <td>
                  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomNumber" DataSourceID="ReservedRooms">
                      <Columns>
                          <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" InsertVisible="False" ReadOnly="True" SortExpression="RoomNumber" />
                          <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                          <asp:CheckBoxField DataField="ReservedStatus" HeaderText="ReservedStatus" SortExpression="ReservedStatus" />
                          <asp:BoundField DataField="RoomRate" HeaderText="RoomRate" SortExpression="RoomRate" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="ReservedRooms" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT * FROM [Rooms] WHERE ([ReservedStatus] = @ReservedStatus)">
                      <SelectParameters>
                          <asp:Parameter DefaultValue="true" Name="ReservedStatus" Type="Boolean" />
                      </SelectParameters>
                  </asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td>
                  <br />
                  <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Total Earnings"></asp:Label>
              </td>
          </tr>
          <tr>
              <td>
                  <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="Bill">
                      <Columns>
                          <asp:BoundField DataField="Total_Earning" HeaderText="Total_Earning" ReadOnly="True" SortExpression="Total_Earning" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="Bill" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT SUM(TotalBill) AS Total_Earning FROM Reservation"></asp:SqlDataSource>
              </td>
          </tr>
      </table>
    
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>