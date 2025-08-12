<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Enquiry.aspx.cs" Inherits="Online_Test.User.Enquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image1" runat="server" Width="100%" Height="200" ImageUrl="~/Images/contact-us-banner.jpg" /><br />
    <table align="center" width="40%" cellpadding="7">
        <tr>
            <td class="auto-style7">Seat no.</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtseatno" runat="server" Height="35px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtseatno" ErrorMessage="Please Enter Seat No" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7">
                Name</td>
            <td class="auto-style7">
                <asp:DropDownList ID="txtname" runat="server" datasourceid="SqlDataSource3" DataTextField="student_name" DataValueField="student_name" Height="35px" Width="256px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [student_name] FROM [Student]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Course</td>
            <td>
                <asp:DropDownList ID="drbcourse" runat="server" Width="250px">
                    <asp:ListItem>BCS</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drbcourse" ErrorMessage="Please Select Course" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Faculty</td>
            <td>
                <asp:DropDownList ID="drbfaculty" runat="server" DataSourceID="SqlDataSource1" DataTextField="teachername" DataValueField="teachername" Height="17px" Width="255px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [teachername] FROM [Teacher]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="drbfaculty" ErrorMessage="Please Select Faculty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Class</td>
            <td>
                <asp:DropDownList ID="drbclass" runat="server" Width="250px">
                    <asp:ListItem>FY BCS</asp:ListItem>
                    <asp:ListItem>SY BCS</asp:ListItem>
                    <asp:ListItem>TY BCS</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drbclass" ErrorMessage="Please Select Class" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Subject</td>
            <td>
                <asp:DropDownList ID="drbsubject" runat="server" DataSourceID="SqlDataSource2" DataTextField="examsubject" DataValueField="examsubject" Height="19px" Width="254px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [examsubject] FROM [Examdetails]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="drbsubject" ErrorMessage="Please Select Subject" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="250px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>Contact no.</td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server" Height="35px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please Enter Valid Contact" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Enquiry message</td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Height="62px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmessage" ErrorMessage="Please Enter Enquiry Message" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="4">
                <asp:Button ID="btnsubmit" runat="server" BackColor="Red" BorderColor="#3333FF" BorderStyle="None" BorderWidth="3px" ForeColor="White" OnClick="btnsubmit_Click" Text="Submit" Width="180px" Font-Bold="True" Height="35px" />
            </td>
        </tr>
    </table>
</asp:Content>
