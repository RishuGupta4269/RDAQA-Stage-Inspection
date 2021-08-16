<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Page</title>
    <style type="text/css">
        .style2
        {
            width: 100%;
            border: 1px solid #ffff00;
        }
        .style3
        {
            height: 23px;
            text-align: left;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            font-size: medium;
            height: 26px;
        }
        .style6
        {
            height: 23px;
            font-size: large;
        }
        .style7
        {
            height: 26px;
            font-size: large;
        }
        .style8
        {
            font-size: large;
        }
        #Password2
        {
            width: 362px;
        }
        #Password1
        {
            width: 361px;
        }
        .style9
        {
            height: 26px;
            width: 535px;
        }
        .style10
        {
            width: 535px;
        }
        .style11
        {
            height: 23px;
            width: 535px;
        }
        .style12
        {
            font-size: medium;
            width: 535px;
            height: 26px;
        }
        .style13
        {
            width: 100%;
            border: 1px solid #FFFFFF;
            background-color: inherit;
        }
        .style14
        {
            font-size: large;
            height: 42px;
        }
        .style15
        {
            width: 535px;
            height: 42px;
        }
        .style16
        {
            height: 42px;
        }
        body
        {
            background-color:#FFCC66;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Password2_onclick() {

        }

// ]]>
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container" id="header">

        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
                ProviderName="<%$ ConnectionStrings:SIDB_connection.ProviderName %>" 
                SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            </div>
            <div>
                <table class="style13">
                    <tr>
                        <td>
            <h1 style="text-align: right; font-size: 60px; color: #000080;">Stage Inspection System</h1></td>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/hallogo.png" />
                        </td>
                    </tr>
                </table>
        </div>
        <h3 style="text-align: center; font-size: 25px;">SIGNUP</h3>
    </div>
      <div>
        
          <table class="style2">
              <tr>
                  <td style="text-align: right" class="style7">
                      &nbsp;Name:</td>
                  <td class="style9">
                      <asp:TextBox ID="TextBox1" runat="server" Width="360px"></asp:TextBox>
                  </td>
                  <td class="style4">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          BackColor="White" ErrorMessage="Name is required" ForeColor="Red" 
                          ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                      </td>
              </tr>
              <tr>
                  <td class="style8" style="text-align: right">
                      Department:</td>
                  <td class="style10">
                      <asp:DropDownList ID="DropDownList1" runat="server" Width="360px">
                          <asp:ListItem Value="0">Select Department</asp:ListItem>
                          <asp:ListItem Value="1">HAL QC</asp:ListItem>
                          <asp:ListItem Value="2">DGAQA</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                          BackColor="White" ErrorMessage="Department is required" ForeColor="Red" 
                          ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="style6" style="text-align: right">
                      Employee ID:</td>
                  <td class="style11">
                      <asp:TextBox ID="TextBox3" runat="server" Width="360px"></asp:TextBox>
                  </td>
                  <td class="style3">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                          BackColor="White" ErrorMessage="ID is required" ForeColor="Red" 
                          ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                      </td>
              </tr>
              <tr>
                  <td class="style7" style="text-align: right">
                      Password:</td>
                  <td class="style12">
                      <asp:TextBox ID="Password1" runat="server" TextMode="Password" Width="360px"></asp:TextBox>
                  </td>
                  <td class="style5">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                          BackColor="White" ErrorMessage="Password is required" ForeColor="Red" 
                          ControlToValidate="Password1"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="style14" style="text-align: right">
                      Confirm Password:</td>
                  <td class="style15">
                      <asp:TextBox ID="Password2" runat="server" TextMode="Password" Width="360px"></asp:TextBox>
                  </td>
                  <td class="style16">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                          BackColor="White" ErrorMessage="Confirm Password is required." 
                          ForeColor="Red" ControlToValidate="Password2"></asp:RequiredFieldValidator>
                      <br />
                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                          ControlToCompare="Password1" ControlToValidate="Password2" 
                          ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                      .</td>
              </tr>
              </table>
        
      </div>
      <div style="text-align: right">
          <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="LOGIN" 
              Width="270px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button1" runat="server" style="text-align: center" 
              Text="SUBMIT" Width="270px" onclick="Button1_Click1" />
      </div>

    </form>
</body>
</html>
