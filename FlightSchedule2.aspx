<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FlightSchedule2.aspx.cs" Inherits="WebApplication.FlightSchedule2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="flightId" DataSourceID="ObjectDataSource1" 
    onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="flightId" HeaderText="flightId" ReadOnly="True" 
                SortExpression="flightId" />
            <asp:BoundField DataField="fromCity" HeaderText="fromCity" 
                SortExpression="fromCity" />
            <asp:BoundField DataField="toCity" HeaderText="toCity" 
                SortExpression="toCity" />
            <asp:BoundField DataField="departTime" HeaderText="departTime" 
                SortExpression="departTime" />
            <asp:BoundField DataField="arrivalTime" HeaderText="arrivalTime" 
                SortExpression="arrivalTime" />
            <asp:BoundField DataField="fare" HeaderText="fare" SortExpression="fare" />
            <asp:BoundField DataField="maxSeats" HeaderText="maxSeats" 
                SortExpression="maxSeats" />
        </Columns>
    </asp:GridView>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
</asp:Content>
