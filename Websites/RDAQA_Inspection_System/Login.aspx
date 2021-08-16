<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #ffff00;
        }
        .style2
        {
            font-size: large;
            text-align: center;
        }
        .style3
        {
            width: 419px;
        }
        .style13
        {
            width: 100%;
            border: 1px solid #FFFFFF;
            background-color: inherit;
        }
        body
        {
            background-color:#FFCC66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        <div>
                <table class="style13">
                    <tr>
                        <td>
            <h1 style="text-align: right; font-size: 60px; color: #000080;">Stage Inspection System<asp:SqlDataSource 
                    ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
                    SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                            </h1></td>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/hallogo.png" />
                        </td>
                    </tr>
                </table>
        </div>
        <h3 style="text-align: center; font-size: 25px;">LOGIN</h3>
    </div>
    <div>
        
        <table class="style1">
            <tr>
                <td class="style2">
                    USER TYPE:</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="360px">
                        <asp:ListItem>Select User Type</asp:ListItem>
                        <asp:ListItem>HAL QC</asp:ListItem>
                        <asp:ListItem>DGAQA</asp:ListItem>
                        <asp:ListItem>ADMIN</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="User Type is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    EMPLOYEE ID:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="360px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Employee ID is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    PASSWORD:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="360px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Password is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        
    </div>
    <div style="text-align: right; margin-left: 40px;">
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="LOGIN" Width="232px" 
            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066FF" 
            NavigateUrl="~/Signup.aspx">New User Signup</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
