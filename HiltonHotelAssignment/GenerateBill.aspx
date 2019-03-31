<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateBill.aspx.cs" Inherits="HiltonHotelAssignment.GenerateBill" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Generate Bills</title>
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
        .auto-style2 {}
        .auto-style3 {
            font-weight: 700;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
  <form id="ReceptionLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 650px; height:auto">
  <h2>Generate Bill</h2>
  <div class="form">
      <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Select Customer ID"></asp:Label>
      <asp:DropDownList ID="DDCustomerID" runat="server" CssClass="auto-style2" DataSourceID="CustomerID" DataTextField="CustomerID" DataValueField="CustomerID" Height="31px" Width="173px" AutoPostBack="True" OnSelectedIndexChanged="DDCustomerID_SelectedIndexChanged"></asp:DropDownList>
      <asp:SqlDataSource ID="CustomerID" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [Customer]"></asp:SqlDataSource>
      <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridCustomerDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SelectedCustomerData" CellPadding="4" CssClass="auto-style4" ForeColor="#333333" GridLines="None" Width="553px">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="NumofPeople" HeaderText="NumofPeople" SortExpression="NumofPeople" />
              <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
              <asp:BoundField DataField="RoomNumAllotted" HeaderText="RoomNumAllotted" SortExpression="RoomNumAllotted" />
          </Columns>
          <EditRowStyle BackColor="#999999" />
          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#E9E7E2" />
          <SortedAscendingHeaderStyle BackColor="#506C8C" />
          <SortedDescendingCellStyle BackColor="#FFFDF8" />
          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
      <asp:SqlDataSource ID="SelectedCustomerData" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT [CustomerID], [Name], [NumofPeople], [CompanyName], [RoomNumAllotted] FROM [Customer] WHERE ([CustomerID] = @CustomerID)">
          <SelectParameters>
              <asp:ControlParameter ControlID="DDCustomerID" Name="CustomerID" PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
      <asp:SqlDataSource ID="RoomRateData" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT Rooms.RoomRate * (SELECT NumofPeople FROM Customer WHERE (CustomerID = @DDCustomer)) AS Total_Bill_USD FROM Reservation INNER JOIN Rooms ON Reservation.RoomNumber = Rooms.RoomNumber WHERE (Reservation.CustomerID = @DDCustomer)">
          <SelectParameters>
              <asp:ControlParameter ControlID="DDCustomerID" Name="DDCustomer" PropertyName="SelectedValue" DefaultValue="" />
          </SelectParameters>
      </asp:SqlDataSource>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
&nbsp;<asp:GridView ID="GridTotalBill" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="RoomRateData" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style5">
          <Columns>
              <asp:BoundField DataField="Total_Bill_USD" HeaderText="Total_Bill_USD" ReadOnly="True" SortExpression="Total_Bill_USD" />
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
      <br />
    <asp:Button ID="BGenerateBill" runat="server" Text="Generate Bill" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="154px" align="center" OnClick="BGenerateBill_Click" /> 
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>
