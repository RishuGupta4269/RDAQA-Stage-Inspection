<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
        <style type="text/css">
        .style2
        {
            text-align: center;
            color: #0099FF;
        }
        .style3
        {
            text-align: center;
            color: #3333FF;
        }
        .style4
        {
            width: 100%;
            border: 1px solid #FFFFFF;
            background-color: #FFCC66;
        }
        .style5
        {
            font-size: 70px;
        }
            body
            {
                background-color: #FFCC66;
            }
            #header
            {
                background-color:#FFCC66;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div id="header">
                <table class="style4">
                    <tr>
                        <td>
                            <h1 style="text-align: right; font-size: 60px; color: #000080;">Hindustan Aeronautics Limited</h1></td>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="134px" 
                                ImageUrl="~/img/hallogo.png" Width="300px" />
                        </td>
                    </tr>
                </table>
                <h2 class="style3">Transport and Aircraft Division, Kanpur</h2>
                <h2 class="style2">Welcome to RDAQA Stage Inspection System</h2>
            </div>
            <hr />
            <div id="main-content">

                <table class="style4">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderStyle="Ridge" 
                                CssClass="style5" ForeColor="Red" Height="250px" Text="LOGIN" 
                                Width="750px" onclick="Button1_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" BackColor="Silver" BorderStyle="Ridge" 
                                CssClass="style5" ForeColor="Red" Height="250px" Text="SIGNUP" 
                                Width="750px" onclick="Button2_Click" />
                        </td>
                    </tr>
                </table>

            </div>
    </div>
    </form>
</body>
</html>
