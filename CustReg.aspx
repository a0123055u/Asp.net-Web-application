<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustReg.aspx.cs" Inherits="WebApplication.CustReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <form id="form12" runat="server">--%>
    <div style="text-align: center">
    
        <asp:Label ID="Label13" runat="server" BackColor="Yellow" ForeColor="Black" 
            Text="Customer Registration Page"></asp:Label>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Login Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="Login" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="RequiredFieldValidator" ControlToValidate="Login"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="password" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="password" ControlToValidate="cnfmpassword" 
                        ErrorMessage="Password Mismatch"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="ConfirmPassword"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="cnfmpassword" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Singapore IC(if applicable)"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter valid IC" 
                        ValidationExpression="^[SFTG]\d{7}[A-Z]$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Passport No"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="Passport" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Full Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="name" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Phone No"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="phone" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style3">
                    <asp:RadioButton ID="Male" runat="server" Text="Male" />
&nbsp;<asp:RadioButton ID="Female" runat="server" Text="Female" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label9" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="dob" runat="server" Width="175px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="23px" 
                        ImageUrl="~/Images/calendar_icon1.png" 
                        Width="27px" onclick="ImageButton1_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" 
                        onselectionchanged="Calendar1_SelectionChanged" Visible="False">
                    </asp:Calendar>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label10" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="email" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Enter valid email id" ControlToValidate="email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="Address" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label12" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Malasiya</asp:ListItem>
                        <asp:ListItem>Singapore</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Myanmar</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:Button ID="Button1" runat="server" Text="Submit" 
        style="text-align: center" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
   <%-- </form>--%>
</asp:Content>
