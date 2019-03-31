<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchingReservationRecords.aspx.cs" Inherits="HiltonHotelAssignment.SearchingReservationRecords" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Reservation Records</title>
      <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-weight: 700;
        }
    </style>
</head>
<body>
  <form id="AdminLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 500px; height:auto">
  <h2>Search Reservations</h2>
  <div class="form" style="text-align: center">
      <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Select Customer ID"></asp:Label>
      <asp:DropDownList ID="RCustomerID" runat="server" DataSourceID="ReservationCustomerID" DataTextField="CustomerID" DataValueField="CustomerID" CssClass="auto-style1" AutoPostBack="True" >
      </asp:DropDownList>
      <asp:SqlDataSource ID="ReservationCustomerID" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [Reservation]"></asp:SqlDataSource>
      <br />
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ReservationData" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
          <Columns>
              <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
              <asp:BoundField DataField="ReservedFrom" HeaderText="ReservedFrom" SortExpression="ReservedFrom" />
              <asp:BoundField DataField="ReservedTo" HeaderText="ReservedTo" SortExpression="ReservedTo" />
              <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber" />
          </Columns>
          <FooterStyle BackColor="White" ForeColor="#000066" />
          <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
          <RowStyle ForeColor="#000066" />
          <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#007DBB" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#00547E" />
      </asp:GridView>
      <asp:SqlDataSource ID="ReservationData" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT * FROM [Reservation] WHERE ([CustomerID] = @CustomerID)">
          <SelectParameters>
              <asp:ControlParameter ControlID="RCustomerID" Name="CustomerID" PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
    
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>