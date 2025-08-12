<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="Online_Test.User.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            
         
        }
        .auto-style6 {
       
        }
        .auto-style7 {
       
        }
        .auto-style8 {
        
        }
        .auto-style9 {
       
        }
        .auto-style10 {
          
        }
        .auto-style11 {
       
        }
        .auto-style12 {
       
        }
        .auto-style13 {
         
        }
        .auto-style14 {
       
        }
    .auto-style15 {
        text-align: left;
        font-size: xx-large;
    }
    .auto-style16 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="" width="80%" align="center" cellpadding="8">
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="~/Images/user1.png" Width="205px" />
            </td>
            <td class="auto-style15" colspan="2"><strong>Student Registration</strong></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="Student Seat No."></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtseatno" runat="server" CssClass="auto-style9" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtseatno" ErrorMessage="Seat no is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Student Roll No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrollnumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtrollnumber" ErrorMessage="Please enter roll number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtstudname" runat="server" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtstudname" ErrorMessage="Please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Course"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drbcourse" runat="server" Width="168px">
                    <asp:ListItem>BCS</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="drbcourse" ErrorMessage="Please select course" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Text="Faculty"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="txtfaculty" runat="server" Width="168px"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label14" runat="server" Text="Class"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:DropDownList ID="drbclass" runat="server" Width="168px">
                    <asp:ListItem>FY BCS</asp:ListItem>
                    <asp:ListItem>SY BCS</asp:ListItem>
                    <asp:ListItem>TY BCS</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="drbclass" ErrorMessage="Please select class" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label20" runat="server" Text="ID"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtid" runat="server" ReadOnly="True" ></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please enter your address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:RadioButton ID="rbmale" runat="server" Text="Male" />
&nbsp;&nbsp;
                <asp:RadioButton ID="rbfemale" runat="server" Text="Female" />
            </td>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtdob" ErrorMessage="Please enter birth date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label8" runat="server" Text="Mother Name"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="txtmothername" runat="server" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmothername" ErrorMessage="Please enter mother's name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label17" runat="server" Text="Adhar Number"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtadhar" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtadhar" ErrorMessage="Please enter aadhar number" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtadhar" ErrorMessage="Please enter valid aadhar number" ForeColor="Red" ValidationExpression="{0-9}[12]"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtemail" runat="server" Width="168px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter email address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label18" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter valid contact no" ForeColor="Red" ValidationExpression="{0-9}[10]"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label10" runat="server" Text="Username"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtusername" runat="server" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtusername" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label19" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpass" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label11" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtconfirmpass" runat="server" Width="168px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconfirmpass" ErrorMessage="Password must be match" ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtconfirmpass" ErrorMessage="Please enter password to confirm" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="2">
                <asp:Image ID="Image3" runat="server" Height="72px" Width="166px" />
            </td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Please choose image to upload" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" rowspan="2">
                <asp:Image ID="Image2" runat="server" Height="91px" Width="151px" />
            </td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please choose image file to upload" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="btnuploadsignature" runat="server" BackColor="#000066" BorderColor="#0000CC" BorderStyle="Double" BorderWidth="3px" ForeColor="White" Height="36px" Text="Upload Signature" Width="142px" OnClick="btnuploadsignature_Click1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="btnuploadphoto" runat="server" BackColor="#000066" BorderColor="#0000CC" BorderStyle="Double" BorderWidth="3px" CssClass="auto-style10" ForeColor="White" Height="34px" Text="Upload Photo" Width="142px" OnClick="btnuploadphoto_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#000066" BorderColor="#0000CC" BorderStyle="Double" BorderWidth="3px" CssClass="auto-style11" ForeColor="White" Height="45px" Text="Submit" Width="142px" OnClick="btnsubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
