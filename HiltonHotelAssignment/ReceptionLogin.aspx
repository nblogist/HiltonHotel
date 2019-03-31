<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReceptionLogin.aspx.cs" Inherits="HiltonHotelAssignment.Reception" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Receptionist Login</title>
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
  <div class="login-wrap" style="left: 0px; top: 0px; width: 413px; height:auto">
  <h2>Reception Login</h2>
  <div class="form" style="text-align: center">
    <asp:TextBox ID="TRecepUserName" runat="server"></asp:TextBox>
    <asp:TextBox ID="TRecepPassword" runat="server" TextMode="Password"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelPasswordIncorrect" runat="server"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
    <asp:Button ID="BRecepSignIn" runat="server" Text="Sign In" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="143px" align="center" OnClick="BRecepSignIn_Click"/> 
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>

