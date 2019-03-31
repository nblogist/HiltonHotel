<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetailAdmin.aspx.cs" Inherits="HiltonHotelAssignment.CustomerDetailAdmin" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Customer Details</title>
      <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
  <form id="AdminLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 60%; height: auto">
  <h2>Customer Details</h2>
  <div class="form" style="text-align: center">
      <br />
      <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="CustomerData" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
          <Columns>
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
              <asp:BoundField DataField="NumofPeople" HeaderText="NumofPeople" SortExpression="NumofPeople" />
              <asp:BoundField DataField="PurposeofStay" HeaderText="PurposeofStay" SortExpression="PurposeofStay" />
              <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
              <asp:BoundField DataField="LuggageDetails" HeaderText="LuggageDetails" SortExpression="LuggageDetails" />
              <asp:BoundField DataField="RoomNumAllotted" HeaderText="RoomNumAllotted" SortExpression="RoomNumAllotted" />
          </Columns>
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
      <asp:SqlDataSource ID="CustomerData" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>