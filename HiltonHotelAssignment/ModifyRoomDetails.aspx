<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyRoomDetails.aspx.cs" Inherits="HiltonHotelAssignment.ModifyRoomDetails" %>

<!DOCTYPE html>
<html lang="en" >

<head runat="server">
  <meta charset="UTF-8">
  <title>Modify Room Details</title>
      <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
    <style type="text/css">
        .auto-style1 {}
    </style>
</head>
<body>
  <form id="AdminLogIn" runat="server">
  <div class="login-wrap" style="left: 0px; top: 0px; width: 750px; height:auto">
  <h2>Modify Room Details</h2>
  <div class="form" style="text-align: center">
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoomNumber" DataSourceID="RoomDetails" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CssClass="auto-style1" Width="687px">
          <Columns>
              <asp:CommandField ShowEditButton="True" />
              <asp:TemplateField HeaderText="RoomNumber" InsertVisible="False" SortExpression="RoomNumber">
                  <EditItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("RoomNumber") %>'></asp:Label>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("RoomNumber") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="RoomType" SortExpression="RoomType">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RoomType") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("RoomType") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="ReservedStatus" SortExpression="ReservedStatus">
                  <EditItemTemplate>
                      <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("ReservedStatus") %>' />
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("ReservedStatus") %>' Enabled="false" />
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="RoomRate" SortExpression="RoomRate">
                  <EditItemTemplate>
                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RoomRate") %>'></asp:TextBox>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("RoomRate") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
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
      <asp:SqlDataSource ID="RoomDetails" runat="server" ConnectionString="<%$ ConnectionStrings:HiltonHotelConnectionString %>" SelectCommand="SELECT * FROM [Rooms]" DeleteCommand="DELETE FROM [Rooms] WHERE [RoomNumber] = @RoomNumber" InsertCommand="INSERT INTO [Rooms] ([RoomType], [ReservedStatus], [RoomRate]) VALUES (@RoomType, @ReservedStatus, @RoomRate)" UpdateCommand="UPDATE [Rooms] SET [RoomType] = @RoomType, [ReservedStatus] = @ReservedStatus, [RoomRate] = @RoomRate WHERE [RoomNumber] = @RoomNumber">
          <DeleteParameters>
              <asp:Parameter Name="RoomNumber" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="RoomType" Type="String" />
              <asp:Parameter Name="ReservedStatus" Type="Boolean" />
              <asp:Parameter Name="RoomRate" Type="Double" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="RoomType" Type="String" />
              <asp:Parameter Name="ReservedStatus" Type="Boolean" />
              <asp:Parameter Name="RoomRate" Type="Double" />
              <asp:Parameter Name="RoomNumber" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
    
  </div>
      
</div>
  <script src='https://code.jquery.com/jquery-1.10.0.min.js'></script>
    <script  src="js/index.js"></script>
    </form>
</body>
</html>