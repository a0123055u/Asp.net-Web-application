<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WelcomePageNew.aspx.cs" Inherits="WebApplication.WelcomePageNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .style2
        {
            width: 98px;
        }
        .auto-style1 {
            width: 909px;
        }
        .auto-style2 {
            width: 686px;
        }
        .auto-style3 {
            width: 686px;
            height: 112px;
        }
        .auto-style4 {
            height: 112px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="myClass">
    
        <tr>
            <td style="text-align: center" class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Welcome To AerLion"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                <table class="style1">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td>
                            <asp:Label ID="lblUserName" runat="server" Text="Guest"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Text="Enter NickName"></asp:Label>
                            <asp:TextBox ID="Nick" runat="server"></asp:TextBox>
                            <br />
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me Next Time" />
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <table class="style1">
                    <tr>
                        <td class="style2">
                            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1">
                                <DataBindings>
                                    <asp:TreeNodeBinding DataMember="node" NavigateUrlField="url" 
                                        TextField="title" />
                                    <asp:TreeNodeBinding DataMember="Node" NavigateUrlField="url" 
                                        TextField="title" />
                                </DataBindings>
                            </asp:TreeView>
                            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile1.xml">
                            </asp:XmlDataSource>
                        </td>
                        <td height="300">
                            AeroLion is Singapore airline providing low coast air travel services in ASEAN 
                            region and covering three destinations viz...KualaLumpur ,Bangok and Jakarta.<br />
                            For
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Contactus.aspx">Contact </asp:LinkButton>
                            click here.<br />
                            <br />
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/gif.gif" />
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Images/news.jpg" />
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblFooter" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
