<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePageNew.aspx.cs" Inherits="WebApplication.Welccome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
    
    <table class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Welcome To AerLion"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
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
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFooter" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
