<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QC_USER.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quality Control</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: none;
            border-width: 1px;
            background-color: inherit;
            height: 150px;
        }
        .style2
        {
            width: 100%;
            border: 1px solid #ffff00;
        }
        .style3
        {
            height: 23px;
            text-align: center;
        }
        .style4
        {
            font-size: 24px;
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
            <h1 style="text-align: right; font-size: 60px; color: #000080;">Stage Inspection System</h1></td>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/hallogo.png" />
                        </td>
                    </tr>
                </table>
        </div>
        <hr />
        <div>
        <table class="style1">
            <tr>
                <td class="style4">
                    <b>NAME</b>:<asp:Label ID="Label1" runat="server" ForeColor="#0066FF" 
                        Text="Label_name"></asp:Label>
                </td>
                <td style="text-align: right">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
                        SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" Text="SETTINGS" 
                        style="text-align: center" Height="36px" Width="270px" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <strong>EID</strong>:<asp:Label ID="Label2" runat="server" ForeColor="#0066FF" 
                        Text="Label_eid"></asp:Label>
                </td>
                <td style="text-align: right">
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="LOGOUT" 
                        Width="270px" Height="36px" />
                </td>
            </tr>
        </table>
        </div>
    </div>
    <hr />
    <div>
        
        <table class="style2">
            <tr>
                <td class="style3">
                    <asp:Button ID="Button2" runat="server" Height="150px" onclick="Button2_Click" 
                        style="text-align: center; font-size: larger" Text="View Status" 
                        Width="400px" />
                </td>
                <td class="style3">
                    <asp:Button ID="Button3" runat="server" Height="150px" onclick="Button3_Click" 
                        style="font-size: larger" Text="Submit New Application" Width="400px" />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
