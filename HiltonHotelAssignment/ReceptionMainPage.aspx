<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReceptionMainPage.aspx.cs" Inherits="HiltonHotelAssignment.ReceptionMainPage" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Welcome Receptionist</title>
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
    </style>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
  <form id="ReceptionLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 60%; height: auto">
  <h2>Reception Main</h2>
      <div class="form">
    <asp:Button ID="BReservation" runat="server" Text="New Reservation" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="205px" align="center" OnClick="BReservation_Click"/> 
    <asp:Button ID="BModifyReservation" runat="server" Text="Modify Reservation" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="225px" align="center" OnClick="BModifyReservation_Click"/> 
    <asp:Button ID="BSearchReservation" runat="server" Text="Reservation Record" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="230px" align="center" OnClick="BSearchReservation_Click"/> 
    <asp:Button ID="BGenerateBills" runat="server" Text="Generate Bills" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="167px" align="center" OnClick="BGenerateBills_Click"/> 
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>

