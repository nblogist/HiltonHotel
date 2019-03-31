<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HiltonHotelAssignment.AddEmployee" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Add Employee</title>
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
  <h2>Add Employee</h2>
  <div class="form" style="text-align: center">
    <asp:TextBox ID="TName" runat="server">Name</asp:TextBox>
    <asp:TextBox ID="TNIC" runat="server">NIC</asp:TextBox>
    <asp:TextBox ID="TUsername" runat="server">Username</asp:TextBox>
    <asp:TextBox ID="TPassword" runat="server">password</asp:TextBox>
      <asp:Label ID="LEmployeeAdd" runat="server" Visible="False">Employee Added Successfully!</asp:Label>
      <br />
    <asp:Button ID="BAddEmployee" runat="server" Text="Add" BackColor="tomato" CssClass="auto-style1" Font-Size="X-Large" Height="40px"  style="margin-top: 26" Width="143px" align="center" OnClick="BAdminSignIn_Click" /> 
    
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>