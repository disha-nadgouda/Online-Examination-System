<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="Online_Test.Admin.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style5
        {
            color: #FFFFFF;
        }
        .style2
        {
            font-size: xx-large;
            font-family: "Berlin Sans FB";
        }
        .style10
        {
            width: 198px;
            color: #FFFFFF;
        }
        .style14
        {
            width: 198px;
        }
        .auto-style9 {
            background-color: #00CC99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/bg1.jpg" 
        Height="650px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <table align="right" cellpadding="6" cellspacing="0"  
            style="color: #FFFFFF; border: thin solid #C0C0C0; border-radius:10px; width: 400px;  margin-left: 80px; margin-right: 80px; margin-bottom: 80px;" class="auto-style9" 
            >
            <tr>
                <td class="style5" colspan="2">
                    <asp:Image ID="Image2" runat="server" Height="50px" 
                    ImageUrl="~/Images/adminlogo.jpj.jpg" Width="91px" 
                        BackColor="White" />
                    <span class="style2"><strong 
                        
                        style="color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; text-align: center;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Admin Login</strong></span></td>
            </tr>
            <tr>
                <td class="style10">
                    Admin Name</td>
                <td class="style14">
                    <asp:TextBox ID="txtadmin" runat="server"  
                        Height="30px" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadmin" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    Passward</td>
                <td class="style14">
                    <asp:TextBox ID="txtpassward" runat="server" 
                        Height="30px" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnlogin" runat="server" BackColor="Black" ForeColor="White" 
                    Height="30px" Text="LOGIN" Width="150px" onclick="btnlogin_Click" 
                        Font-Bold="True" Font-Size="Medium" Font-Underline="True" />
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
