<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Memo_view.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Memo_view</title>
    <style>
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
        .style15
        {
            font-size:36px;
            font-weight:bold;
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
            <h1 style="text-align: right; font-size: 60px; color: #000080;">Stage Inspection System</h1>
                            <asp:SqlDataSource ID="Memo_db_source" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
                                SelectCommand="SELECT * FROM [Memo_TB]"></asp:SqlDataSource>
                        </td>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/hallogo.png" />
                        </td>
                    </tr>
                </table>
        </div>
        <div>
            <hr />
        </div>
    
    </div>
    <div>

        <table class="style14">
            <tr>
                <td class="style15">
                    ALL MEMO&nbsp;</td>
                <td style="text-align: right">
                    <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                        Text="BACK" Width="207px" />
                </td>
            </tr>
        </table>

    </div>

    <div id="main-content">
        
       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="Memo_db_source" Height="319px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1628px" 
            AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Memo_no" HeaderText="Memo_no" 
                    SortExpression="Memo_no" />
                <asp:BoundField DataField="Project" HeaderText="Project" 
                    SortExpression="Project" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Aircraft_no" HeaderText="Aircraft_no" 
                    SortExpression="Aircraft_no" />
                <asp:BoundField DataField="Trade" HeaderText="Trade" SortExpression="Trade" />
                <asp:BoundField DataField="Date_ti" HeaderText="Date_ti" 
                    SortExpression="Date_ti" />
                <asp:BoundField DataField="Stage" HeaderText="Stage" SortExpression="Stage" />
                <asp:BoundField DataField="Remarks_QC" HeaderText="Remarks_QC" 
                    SortExpression="Remarks_QC" />
                <asp:BoundField DataField="Limitation" HeaderText="Limitation" 
                    SortExpression="Limitation" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="Remarks_DGAQA" HeaderText="Remarks_DGAQA" 
                    SortExpression="Remarks_DGAQA" />
                <asp:BoundField DataField="ID" HeaderText="ID" 
                    SortExpression="ID" ReadOnly="True" />
                <asp:BoundField DataField="QC_eid" HeaderText="QC_eid" 
                    SortExpression="QC_eid" />
                <asp:BoundField DataField="Offer_status" HeaderText="Offer_status" 
                    SortExpression="Offer_status" />
                <asp:BoundField DataField="DGAQA_eid" HeaderText="DGAQA_eid" 
                    SortExpression="DGAQA_eid" />
            </Columns>
        </asp:GridView>
        --%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="Memo_db_source" AllowPaging="True" 
            AllowSorting="True" Width="1626px" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="Memo_no" HeaderText="Memo Number" 
                    />
                <asp:BoundField DataField="Project" HeaderText="Project" 
                    SortExpression="Project" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Aircraft_no" HeaderText="Aircraft Number" 
                    SortExpression="Aircraft_no" />
                <asp:BoundField DataField="Trade" HeaderText="Trade" SortExpression="Trade" />
                <asp:BoundField DataField="Date_ti" HeaderText="Date Modified" 
                    SortExpression="Date_ti" />
                <asp:BoundField DataField="Stage" HeaderText="Stage" />
                <asp:BoundField DataField="Remarks_QC" HeaderText="Remarks QC" 
                     />
                <asp:BoundField DataField="Limitation" HeaderText="Limitation" 
                    />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="Remarks_DGAQA" HeaderText="Remarks DGAQA" 
                />
                <asp:BoundField DataField="QC_eid" HeaderText="QC SIGNEE" 
                    />
                <asp:BoundField DataField="Offer_status" HeaderText="Offer Status" 
                    SortExpression="Offer_status" />
                <asp:BoundField DataField="DGAQA_eid" HeaderText="DGAQA SIGNEE" 
                     />
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
   
    </div>
    </form>
</body>
</html>
