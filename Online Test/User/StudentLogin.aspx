<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="Online_Test.User.StudentLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            font-size: large;
        }
    .auto-style8 {
        background-color: #00CC99;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="650px" 
        BackImageUrl="~/Images/bg1.jpg" Width="100%">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />


        <table align="right" cellpadding="5" cellspacing="0" 
            
            style= "border: thin solid #C0C0C0; margin: 50px; color: #FFFFFF; width: 400px; border-radius:10px;" class="auto-style8"  >
            <tr>
                <td colspan="2" style="text-align: center">
                    <span class="auto-style7"><strong>Student Login</strong></span><strong><span class="style4"><hr noshade="noshade" width="95%" /> </span></strong></td>
            </tr>
            <tr>
                <td style="font-weight:700">
                    Student Name</td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-weight:700">
                    Passward</td>
                <td>
                    <asp:TextBox ID="txtpassward" runat="server" Height="30px" TextMode="Password" 
                    Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    
                    <asp:Button ID="btnlogin" runat="server" BackColor="#339933" BorderStyle="None" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="35px" 
                    onclick="btnlogin_Click" Text="Login" Width="180px" 
                        style="text-align: center" />
                    &nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="White" 
                        NavigateUrl="~/User/StudentRegistration.aspx">Create New Account  </asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
          <br />
        <br />
      
        <br />
      
   

    </asp:Panel>
</asp:Content>
