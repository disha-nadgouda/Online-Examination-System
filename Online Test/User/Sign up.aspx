<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Sign up.aspx.cs" Inherits="Online_Test.User.Sign_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<br />
<br />
<br />
<br />
<br />
<table align="center" cellpadding="5">
    <tr>
        <td colspan="2" 
            style="text-align: center; font-size: xx-large; color: #000099;">Create Your Account<hr noshade="noshade" width="700" /></td>
    </tr>
    <tr>
        <td>
            <table align="center" cellpadding="10" cellspacing="0" width="300" 
                style="background-color: #00FF99">
                <tr>
                    <td style="padding: 10px; font-size: x-large; font-weight: 700">Student Registration</td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" BackColor="White" 
                            style="text-align: center">
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Student Click Here" 
                                BorderColor="#00FF99" BorderStyle="Solid" BorderWidth="2px" Height="50px" 
                               style="font-weight: 700" Width="200px" 
                                PostBackUrl="~/User/StudentRegistration.aspx" onclick="Button2_Click1" />
                            <br />
                            <br />
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <table align="center" cellpadding="10" cellspacing="0" class="style3" style="background-color: #0099FF">
                <tr>
                    <td style="padding: 10px; font-size: x-large; font-weight: 700">Teacher Registration</td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel2" runat="server" BackColor="White" 
                            style="text-align: center">
                            <br />
                            <asp:Button ID="Button3" runat="server" Text="Teacher Click Here" 
                                BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="2px" Height="50px" 
                                 style="font-weight: 700" Width="200px" 
                                PostBackUrl="~/User/TeacherRegistration.aspx" onclick="Button3_Click" />
                            <br />
                            <br />
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
