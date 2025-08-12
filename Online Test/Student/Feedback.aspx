<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Online_Test.Student.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image5" runat="server" Height="250px" ImageUrl="~/Images/email-calendar-feedback-banner.jpg" Width="100%" />
<br/><br />
<table align="center"  cellpadding="5" cellspacing="0" width="50%"
        >
    <tr>
        <td rowspan="6">&nbsp;</td>
        <td>Name</td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px" Enabled="False" ReadOnly="True" 
               ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="250px" Enabled="False" ReadOnly="True"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Contact No</td>
        <td>
            <asp:TextBox ID="txtcontactno" runat="server" Height="30px" Width="250px" Enabled="False" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Please Enter Contact" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Subject</td>
        <td>
            <asp:DropDownList ID="drbsubject" runat="server" DataSourceID="SqlDataSource1" DataTextField="examsubject" DataValueField="examsubject" Height="16px" Width="255px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [examsubject] FROM [Examdetails]"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drbsubject" ErrorMessage="Please Select Subject" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Feedback Message</td>
        <td>
            <asp:TextBox ID="txtfeedbackmessage" runat="server" Height="30px" 
                    TextMode="MultiLine" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtfeedbackmessage" ErrorMessage="Please Enter Feedback Message" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" BackColor="Red" 
                    ForeColor="White" Height="30px" Text="SUBMIT" Width="150px" 
                 BorderStyle="None" Font-Bold="True" Font-Size="Medium" OnClick="btnsubmit_Click1" 
                 />
                &nbsp;</td>
    </tr>
</table>
</asp:Content>
