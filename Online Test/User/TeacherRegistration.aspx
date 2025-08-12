<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="TeacherRegistration.aspx.cs" Inherits="Online_Test.User.TeacherRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
    
    }
    .auto-style6 {
     
    }
        .auto-style8 {
          
        }
    .auto-style16 {
        text-align: right;
    }
    .auto-style15 {
        text-align: left;
        font-size: xx-large;
    }
        .auto-style17 {
            width: 241px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="" width="60%" align="center"  cellpadding="8">
    <tr>
            <td class="auto-style16" colspan="2">
                <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/Images/user1.png" Width="205px" />
        </td>
            <td class="auto-style15" colspan="2"><strong>Teacher Registration</strong></td>
        </tr>
    <tr>
        <td class="auto-style5" colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="ID"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtid" runat="server" Width="210px" Enabled="False" ReadOnly="True" ></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Width="210px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Contact No."></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtcontact" runat="server" Width="210px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please enter contact " ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please enter valid contact  " ForeColor="Red" ValidationExpression="{0-9}[10]"></asp:RegularExpressionValidator>
        </td>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtaddress" runat="server" Width="210px" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please enter your address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:TextBox ID="txtusername" runat="server" Width="210px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtusername" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="Label10" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Width="210px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter email address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpass" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtpass" runat="server" Width="210px"></asp:TextBox>
        </td>
        <td rowspan="2">
            <asp:Image ID="Image2" runat="server" Height="134px" Width="154px" />
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please choose file to upload" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style17">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconfirmpass" ErrorMessage="Please enter correct password" ForeColor="Red"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtconfirmpass" ErrorMessage="Please enter password to match" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtconfirmpass" runat="server" Width="210px"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnuploadphoto" runat="server" BackColor="Red" BorderColor="#0000CC" BorderStyle="None" BorderWidth="3px" ForeColor="White" Height="35px" Text="Upload Photo" Width="180px" OnClick="btnuploadphoto_Click" Font-Bold="True" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td colspan="2">
            <asp:Button ID="btnsubmit" runat="server" BackColor="Red" BorderColor="#0000CC" BorderStyle="None" BorderWidth="3px" CssClass="auto-style8" ForeColor="White" OnClick="btnsubmit_Click" Text="Submit" Width="180px" Font-Bold="True" Height="35px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
