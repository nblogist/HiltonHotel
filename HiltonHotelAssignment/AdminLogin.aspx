<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HiltonHotelAssignment.AdminLogin" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Administrator Login</title>
      <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: -24px;
        }
    </style>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
  <form id="AdminLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 413px; height:auto">
  <h2>Administrator Login</h2>
  <div class="form" style="text-align: center">
    <asp:TextBox ID="TAdminUserName" runat="server"></asp:TextBox>
    <asp:TextBox ID="TAdminPassword" runat="server" TextMode="Password">Password</asp:TextBox>
      <asp:Label ID="LabelPasswordIncorrect" runat="server" Visible="False"></asp:Label>
      <br />
    <asp:Button ID="BAdminSignIn" runat="server" Text="Sign In" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="143px" align="center" OnClick="BAdminSignIn_Click" /> 
    
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>

