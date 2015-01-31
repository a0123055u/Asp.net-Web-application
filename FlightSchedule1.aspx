<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlightSchedule1.aspx.cs" Inherits="WebApplication.FlightSchedule1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="flightId" DataSourceID="ObjectDataSource1" 
        ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="flightId" HeaderText="Flight Code" ReadOnly="True" 
                SortExpression="flightId" />
            <asp:BoundField DataField="fromCity" HeaderText="FromCity" 
                SortExpression="fromCity" />
            <asp:BoundField DataField="toCity" HeaderText="ToCity" 
                SortExpression="toCity" />
            <asp:BoundField DataField="departTime" HeaderText="DepartTime" 
                SortExpression="departTime" />
            <asp:BoundField DataField="arrivalTime" HeaderText="ArrivalTime" 
                SortExpression="arrivalTime" />
            <asp:BoundField DataField="fare" DataFormatString="{0:###0.00}" 
                HeaderText="Fare" SortExpression="fare" />
            <asp:BoundField DataField="maxSeats" HeaderText="MaxSeats" 
                SortExpression="maxSeats" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="WebApplication.AeroLionDatasetTableAdapters.flight_ScheduleTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_flightId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="flightId" Type="String" />
            <asp:Parameter Name="fromCity" Type="String" />
            <asp:Parameter Name="toCity" Type="String" />
            <asp:Parameter Name="departTime" Type="String" />
            <asp:Parameter Name="arrivalTime" Type="String" />
            <asp:Parameter Name="fare" Type="Decimal" />
            <asp:Parameter Name="maxSeats" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fromCity" Type="String" />
            <asp:Parameter Name="toCity" Type="String" />
            <asp:Parameter Name="departTime" Type="String" />
            <asp:Parameter Name="arrivalTime" Type="String" />
            <asp:Parameter Name="fare" Type="Decimal" />
            <asp:Parameter Name="maxSeats" Type="Int32" />
            <asp:Parameter Name="Original_flightId" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    </form>
</body>
</html>
