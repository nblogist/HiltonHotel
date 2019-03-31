<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMainPage.aspx.cs" Inherits="HiltonHotelAssignment.AdminMainPageaspx" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Welcome Administrator</title>
      <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
  <form id="ReceptionLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 400px; height: 300px">
  <h2>Administration Main</h2>
      <div class="form" style="text-align: center">
          <asp:ImageButton ID="IBAddEmployee" runat="server" Height="96px" ImageUrl="https://cdn0.iconfinder.com/data/icons/management-1/100/business-01-512.png" Width="96px" OnClick="IBAddEmployee_Click" />
&nbsp;
          <asp:ImageButton ID="IBModifyRoom" runat="server" Height="96px" ImageUrl="http://png.clipart-library.com/images4/2/bedroom-vector-master-1.png" OnClick="IBModifyRoom_Click" />
          <asp:ImageButton ID="IBReports" runat="server" Height="96px" ImageUrl="https://cdn4.iconfinder.com/data/icons/knowledge-1/32/90-01-512.png" OnClick="IBReports_Click" />
&nbsp;&nbsp;
          <asp:ImageButton ID="IBCustomerDetails" runat="server" Height="96px" ImageUrl="https://cdn4.iconfinder.com/data/icons/eldorado-work/40/profile_1-512.png" OnClick="IBCustomerDetails_Click" />
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>
