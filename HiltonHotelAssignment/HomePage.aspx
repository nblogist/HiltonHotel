<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="HiltonHotelAssignment.HomePage" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Welcome to Hilton Hotel</title>
      <link rel="stylesheet" href="css/style.css">
    <style type="text/css">

        .auto-style1 {
            left: 0px;
            top: -24px;
        }

        html {
  background: #95a5a6;
  background-image: url(http://www.cgarchitect.com/content/portfolioitems/2015/11/119538/Website_A_v2_large.jpg);
  font-family: 'Helvetica Neue', Arial, Sans-Serif;
        }

    </style>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
  <form id="AdminLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 413px; height:auto">
  <h2>Hotel Hilton</h2>
  <div class="form" style="text-align: left">
    <asp:Button ID="BHPageAdmin" runat="server" Text="Admin" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="143px" align="center" OnClick="BHPageAdmin_Click" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="BHPageReception" runat="server" Text="Reception" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="143px" align="center" OnClick="BHPageReception_Click" /> 
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>

