<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="TeacherLogin.aspx.cs" Inherits="Online_Test.User.TeacherLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            margin-left: 235px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
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


        <table align="right" cellpadding="8" cellspacing="1" 
            
            style= "border: thin solid #C0C0C0; margin: 50px; color: #FFFFFF; width: 400px; border-radius:10px;" class="auto-style9"  >
            <tr>
            <td class="auto-style8" colspan="2"><strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="Teacher Login"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="218px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnlogin" runat="server" BackColor="Black" BorderColor="#0000CC" BorderStyle="None" BorderWidth="3px"  ForeColor="White" Text="Login" Width="180px" OnClick="btnlogin_Click" Font-Bold="True" Height="35px" />
&nbsp;&nbsp;
               
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/User/TeacherRegistration.aspx">Create New Account</asp:LinkButton>
               
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
