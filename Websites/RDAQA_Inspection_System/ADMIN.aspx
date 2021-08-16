<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADMIN.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN</title>
     <style type="text/css">
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
         .style14
         {
             width: 100%;
             border: 1px solid #FFCC66;
             background-color: #FFCC66;
         }
         .style16
         {
             height: 23px;
         }
         .style17
         {
             width: 800px;
             font-size:30px;
             font-weight:bold;
         }
         .style18
         {
             height: 23px;
             width: 800px;
             text-align: center;
         }
         #footer
         {
             text-align: right;
         }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
        <h3 style="text-align: center; font-size: 36px;">ADMINISTRATOR&nbsp;&nbsp;&nbsp; </h3>
    </div>
    <hr />
    <div id="main-content">
        
        <table class="style14">
            <tr>
                <td class="style17">
                    &nbsp;Users</td>
                <td class="style17">
                    Aircrafts</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        DataKeyNames="Department,EID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Department" HeaderText="Department" ReadOnly="True" 
                                SortExpression="Department" />
                            <asp:BoundField DataField="EID" HeaderText="EID" ReadOnly="True" 
                                SortExpression="EID" />
                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                SortExpression="Password" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
                        DeleteCommand="DELETE FROM [Users] WHERE [Department] = @original_Department AND [EID] = @original_EID AND [Name] = @original_Name AND [Password] = @original_Password" 
                        InsertCommand="INSERT INTO [Users] ([Name], [Department], [EID], [Password]) VALUES (@Name, @Department, @EID, @Password)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT * FROM [Users]" 
                        UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Password] = @Password WHERE [Department] = @original_Department AND [EID] = @original_EID AND [Name] = @original_Name AND [Password] = @original_Password">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Department" Type="Int32" />
                            <asp:Parameter Name="original_EID" Type="Int32" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_Password" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="Int32" />
                            <asp:Parameter Name="EID" Type="Int32" />
                            <asp:Parameter Name="Password" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="original_Department" Type="Int32" />
                            <asp:Parameter Name="original_EID" Type="Int32" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_Password" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style16">
                    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Aircraft_no" 
                        DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Aircraft_Name" HeaderText="Aircraft_Name" 
                                SortExpression="Aircraft_Name" />
                            <asp:BoundField DataField="Aircraft_no" HeaderText="Aircraft_no" 
                                ReadOnly="True" SortExpression="Aircraft_no" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
                        DeleteCommand="DELETE FROM [Aircraft] WHERE [Aircraft_no] = @original_Aircraft_no AND (([Aircraft_Name] = @original_Aircraft_Name) OR ([Aircraft_Name] IS NULL AND @original_Aircraft_Name IS NULL))" 
                        InsertCommand="INSERT INTO [Aircraft] ([Aircraft_Name], [Aircraft_no]) VALUES (@Aircraft_Name, @Aircraft_no)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT * FROM [Aircraft]" 
                        UpdateCommand="UPDATE [Aircraft] SET [Aircraft_Name] = @Aircraft_Name WHERE [Aircraft_no] = @original_Aircraft_no AND (([Aircraft_Name] = @original_Aircraft_Name) OR ([Aircraft_Name] IS NULL AND @original_Aircraft_Name IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Aircraft_no" Type="Decimal" />
                            <asp:Parameter Name="original_Aircraft_Name" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Aircraft_Name" Type="String" />
                            <asp:Parameter Name="Aircraft_no" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Aircraft_Name" Type="String" />
                            <asp:Parameter Name="original_Aircraft_no" Type="Decimal" />
                            <asp:Parameter Name="original_Aircraft_Name" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        
    </div>
    <div id="footer">
        <asp:Button ID="Button1" runat="server" Text="LOGOUT" Height="36px" 
            onclick="Button1_Click" Width="180px" />
    </div>
    </div>
    </form>
</body>
</html>
