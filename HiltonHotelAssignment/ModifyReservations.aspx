<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyReservations.aspx.cs" Inherits="HiltonHotelAssignment.ModifyReservations" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Modify Reservations</title>
      <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
  <form id="AdminLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 700px; height:auto">
  <h2 class="auto-style2">Modify Reservations</h2>
  <div class="form" style="text-align: center">
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ReservationData" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowSorting="True" CssClass="auto-style1" Height="127px" Width="671px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
              <asp:BoundField DataField="ReservedFrom" HeaderText="ReservedFrom" SortExpression="ReservedFrom" />
              <asp:BoundField DataField="ReservedTo" HeaderText="ReservedTo" SortExpression="ReservedTo" />
              <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber" />
          </Columns>
          <FooterStyle BackColor="#CCCC99" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="White" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
      <asp:SqlDataSource ID="ReservationData" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT * FROM [Reservation]" DeleteCommand="DELETE FROM [Reservation] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Reservation] ([CustomerID], [ReservedFrom], [ReservedTo], [RoomNumber]) VALUES (@CustomerID, @ReservedFrom, @ReservedTo, @RoomNumber)" UpdateCommand="UPDATE [Reservation] SET [CustomerID] = @CustomerID, [ReservedFrom] = @ReservedFrom, [ReservedTo] = @ReservedTo, [RoomNumber] = @RoomNumber WHERE [Id] = @Id">
          <DeleteParameters>
              <asp:Parameter Name="Id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="CustomerID" Type="String" />
              <asp:Parameter DbType="Date" Name="ReservedFrom" />
              <asp:Parameter DbType="Date" Name="ReservedTo" />
              <asp:Parameter Name="RoomNumber" Type="Int32" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="CustomerID" Type="String" />
              <asp:Parameter DbType="Date" Name="ReservedFrom" />
              <asp:Parameter DbType="Date" Name="ReservedTo" />
              <asp:Parameter Name="RoomNumber" Type="Int32" />
              <asp:Parameter Name="Id" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
    
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>