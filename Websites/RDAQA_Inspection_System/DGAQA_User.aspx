<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DGAQA_User.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DGAQA_User</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: none;
            border-width: 1px;
            background-color: #FFCC66;
            height: 150px;
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
    <div id= "main-content" style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="90%" 
            AllowPaging="True" style="text-align: left">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Memo_no" HeaderText="Memo_no" 
                    ReadOnly="true" />
                <asp:BoundField DataField="Project" HeaderText="Project" SortExpression="Project"
                    ReadOnly="true" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" ReadOnly="true" />
                <asp:BoundField DataField="Aircraft_no" HeaderText="Aircraft Number" SortExpression="Aircraft_no"
                    ReadOnly="true" />
                <asp:BoundField DataField="Trade" HeaderText="Trade" SortExpression="Trade" ReadOnly="true" />
                <asp:BoundField DataField="Date_ti" HeaderText="Date" SortExpression="Date_ti"
                    ReadOnly="true" />
                <asp:BoundField DataField="Stage" HeaderText="Stage" ReadOnly="true" />
                <asp:BoundField DataField="Remarks_QC" HeaderText="Remarks QC" 
                   ReadOnly="true" />
                <asp:BoundField DataField="Limitation" HeaderText="Limitation" 
                  ReadOnly="true"/>
                <asp:TemplateField HeaderText="Status" SortExpression="Status">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server"  SelectedValue='<%# Bind("Status") %>'>
                            <asp:ListItem>Select an option</asp:ListItem>
                            <asp:ListItem>OFFERED</asp:ListItem>
                            <asp:ListItem>RETURNED</asp:ListItem>
                            <asp:ListItem>REOFFERED</asp:ListItem>
                            <asp:ListItem>CLEARED</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Remarks_DGAQA" HeaderText="Remarks_DGAQA" 
                    />
                <asp:BoundField DataField="QC_eid" HeaderText="QC SIGNEE" 
                    SortExpression="QC_eid" ReadOnly="True" />
                <asp:BoundField DataField="Offer_status" HeaderText="Offer Status" 
                    SortExpression="Offer_status" ReadOnly="True" />
                <asp:BoundField DataField="DGAQA_eid" HeaderText="DGAQA SIGNEE" 
                    SortExpression="DGAQA_eid"  />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:SIDB_connection %>" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Memo_TB]" 
            UpdateCommand="UPDATE [Memo_TB] SET [Status] = @Status, [Remarks_DGAQA] = @Remarks_DGAQA, [DGAQA_eid] = @DGAQA_eid WHERE  [Memo_no] = @original_Memo_no">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="String" />
                <asp:Parameter Name="original_Memo_no" Type="String" />
                <asp:Parameter Name="original_Project" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
                <asp:Parameter Name="original_Aircraft_no" Type="Int32" />
                <asp:Parameter Name="original_Trade" Type="String" />
                <asp:Parameter Name="original_Date_ti" Type="DateTime" />
                <asp:Parameter Name="original_Stage" Type="String" />
                <asp:Parameter Name="original_Remarks_QC" Type="String" />
                <asp:Parameter Name="original_Limitation" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_Remarks_DGAQA" Type="String" />
                <asp:Parameter Name="original_QC_eid" Type="Int32" />
                <asp:Parameter Name="original_Offer_status" Type="Int32" />
                <asp:Parameter Name="original_DGAQA_eid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Memo_no" Type="String" />
                <asp:Parameter Name="Project" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Aircraft_no" Type="Int32" />
                <asp:Parameter Name="Trade" Type="String" />
                <asp:Parameter Name="Date_ti" Type="DateTime" />
                <asp:Parameter Name="Stage" Type="String" />
                <asp:Parameter Name="Remarks_QC" Type="String" />
                <asp:Parameter Name="Limitation" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Remarks_DGAQA" Type="String" />
                <asp:Parameter Name="ID" Type="String" />
                <asp:Parameter Name="QC_eid" Type="Int32" />
                <asp:Parameter Name="Offer_status" Type="Int32" />
                <asp:Parameter Name="DGAQA_eid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Memo_no" Type="String" />
                <asp:Parameter Name="Project" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Aircraft_no" Type="Int32" />
                <asp:Parameter Name="Trade" Type="String" />
                <asp:Parameter Name="Date_ti" Type="DateTime" />
                <asp:Parameter Name="Stage" Type="String" />
                <asp:Parameter Name="Remarks_QC" Type="String" />
                <asp:Parameter Name="Limitation" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Remarks_DGAQA" Type="String" />
                <asp:Parameter Name="QC_eid" Type="Int32" />
                <asp:Parameter Name="Offer_status" Type="Int32" />
                <asp:Parameter Name="DGAQA_eid" Type="Int32" />
                <asp:Parameter Name="original_ID" Type="String" />
                <asp:Parameter Name="original_Memo_no" Type="String" />
                <asp:Parameter Name="original_Project" Type="String" />
                <asp:Parameter Name="original_Type" Type="String" />
                <asp:Parameter Name="original_Aircraft_no" Type="Int32" />
                <asp:Parameter Name="original_Trade" Type="String" />
                <asp:Parameter Name="original_Date_ti" Type="DateTime" />
                <asp:Parameter Name="original_Stage" Type="String" />
                <asp:Parameter Name="original_Remarks_QC" Type="String" />
                <asp:Parameter Name="original_Limitation" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_Remarks_DGAQA" Type="String" />
                <asp:Parameter Name="original_QC_eid" Type="Int32" />
                <asp:Parameter Name="original_Offer_status" Type="Int32" />
                <asp:Parameter Name="original_DGAQA_eid" Type="Int32" />
                
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:HiddenField ID="HiddenField1" runat="server" />

    </div>
     <!-- DeleteCommand="DELETE FROM [Memo_TB] WHERE [ID] = @original_ID AND [Memo_no] = @original_Memo_no AND [Project] = @original_Project AND [Type] = @original_Type AND [Aircraft_no] = @original_Aircraft_no AND [Trade] = @original_Trade AND [Date_ti] = @original_Date_ti AND [Stage] = @original_Stage AND (([Remarks_QC] = @original_Remarks_QC) OR ([Remarks_QC] IS NULL AND @original_Remarks_QC IS NULL)) AND (([Limitation] = @original_Limitation) OR ([Limitation] IS NULL AND @original_Limitation IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Remarks_DGAQA] = @original_Remarks_DGAQA) OR ([Remarks_DGAQA] IS NULL AND @original_Remarks_DGAQA IS NULL)) AND (([QC_eid] = @original_QC_eid) OR ([QC_eid] IS NULL AND @original_QC_eid IS NULL)) AND [Offer_status] = @original_Offer_status AND (([DGAQA_eid] = @original_DGAQA_eid) OR ([DGAQA_eid] IS NULL AND @original_DGAQA_eid IS NULL))" 
            InsertCommand="INSERT INTO [Memo_TB] ([Memo_no], [Project], [Type], [Aircraft_no], [Trade], [Date_ti], [Stage], [Remarks_QC], [Limitation], [Status], [Remarks_DGAQA], [ID], [QC_eid], [Offer_status], [DGAQA_eid]) VALUES (@Memo_no, @Project, @Type, @Aircraft_no, @Trade, @Date_ti, @Stage, @Remarks_QC, @Limitation, @Status, @Remarks_DGAQA, @ID, @QC_eid, @Offer_status, @DGAQA_eid)"
            AND [Project] = @original_Project AND [Type] = @original_Type AND [Aircraft_no] = @original_Aircraft_no AND [Trade] = @original_Trade AND [Date_ti] = @original_Date_ti AND [Stage] = @original_Stage AND (([Remarks_QC] = @original_Remarks_QC) OR ([Remarks_QC] IS NULL AND @original_Remarks_QC IS NULL)) AND (([Limitation] = @original_Limitation) OR ([Limitation] IS NULL AND @original_Limitation IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Remarks_DGAQA] = @original_Remarks_DGAQA) OR ([Remarks_DGAQA] IS NULL AND @original_Remarks_DGAQA IS NULL)) AND (([QC_eid] = @original_QC_eid) OR ([QC_eid] IS NULL AND @original_QC_eid IS NULL)) AND [Offer_status] = @original_Offer_status AND (([DGAQA_eid] = @original_DGAQA_eid) OR ([DGAQA_eid] IS NULL AND @original_DGAQA_eid IS NULL))"
            --> 
    </form>
</body>
</html>
