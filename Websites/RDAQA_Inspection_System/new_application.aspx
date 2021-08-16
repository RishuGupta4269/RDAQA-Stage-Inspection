<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new_application.aspx.cs" Inherits="new_application" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create new Application</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #FFFFFF;
            background-color: inherit;
        }
        .style2
        {
            font-size: large;
            text-align: center;
        }
        .style3
        {
            font-size: large;
            text-align: center;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 100%;
            border: 1px solid #FFFFFF;
        }
        .style6
        {
            width: 859px;
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
        #header
        {
            text-align: right;
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
        <asp:SqlDataSource 
                ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
                SelectCommand="SELECT * FROM [Aircraft]"></asp:SqlDataSource>

        
        <asp:SqlDataSource ID="Memo_db_source" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
            SelectCommand="SELECT * FROM [Memo_TB]"></asp:SqlDataSource>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="BACK" 
            Width="90px" />
&nbsp;&nbsp;&nbsp;

        
    </div>
    <hr />
    <div id="app-header">
        
        <table class="style1">
            <tr>
                <td class="style2">
                    PROJECT:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="360px">
                        <asp:ListItem>Select Project</asp:ListItem>
                        <asp:ListItem Value="DO228">DORNIER-228</asp:ListItem>
                        <asp:ListItem Value="HS748">HS-748</asp:ListItem>
                        <asp:ListItem Value="UAV">UAV</asp:ListItem>
                        <asp:ListItem Value="RTSHOP">Rotary_Table_Shop</asp:ListItem>
                        <asp:ListItem Value="OTHERS">Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Project is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    TYPE:</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="360px">
                        <asp:ListItem>SELECT TYPE OF PROCESS</asp:ListItem>
                        <asp:ListItem Value="MRO">MRO</asp:ListItem>
                        <asp:ListItem Value="MFG">MFG</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="Type is required." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    AIRCRAFT NUMBER:</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="360px" 
                        DataSourceID="SqlDataSource1" DataTextField="Aircraft_no" 
                        DataValueField="Aircraft_no">
                        <asp:ListItem Selected="True">Select Aircraft Number</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="Aircraft Number is required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    TRADE:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="360px">
                        <asp:ListItem>SELECT TRADE</asp:ListItem>
                        <asp:ListItem Value="1">Electrical</asp:ListItem>
                        <asp:ListItem Value="2">Instrument</asp:ListItem>
                        <asp:ListItem Value="3">Radio</asp:ListItem>
                        <asp:ListItem Value="4">Airframe</asp:ListItem>
                        <asp:ListItem Value="5">Engine</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="Trade is required." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <hr />
    <div id="remarks">
        <table class="style5">
            <tr>
                <td class="style2">
                    STAGE:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="75px" Width="750px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter description about stage." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    REMARK:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="75px" Width="750px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    LIMITATION:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox3" runat="server" Height="75px" Width="750px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    ATTACHMENT:</td>
                <td class="style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="360px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <hr />
    <div id="footer">
        
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Height="50px" Text="SAVE" 
                        Width="180px" onclick="Button1_Click" BackColor="#CCCCCC" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button2" runat="server" Height="50px" Text="OFFER TO RDAQA" 
                        Width="180px" BackColor="Silver" onclick="Button2_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button3" runat="server" Height="50px" Text="RETRACT" 
                        Width="180px" BackColor="Silver" />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
