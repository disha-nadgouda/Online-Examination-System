<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FacultyNotification.aspx.cs" Inherits="Online_Test.Admin.StudentNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style11 {
        text-align: center;
    }
    .auto-style12 {
        height: 33px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="3" class="auto-style1">
    <tr>
        <td class="auto-style10" colspan="2"><strong>Notification To Faculty</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Notification ID</td>
        <td>
            <asp:TextBox ID="txtid" runat="server" Width="225px" ReadOnly="True" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">Date</td>
        <td class="auto-style12">
            <asp:TextBox ID="txtdate" runat="server" Width="225px" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="Please Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Select Faculty</td>
        <td>
            <asp:DropDownList ID="drbfaculty" runat="server" Width="225px" DataSourceID="SqlDataSource1" DataTextField="teachername" DataValueField="teachername">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drbfaculty" ErrorMessage="Please Select Teacher" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Teacher]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Notification Message</td>
        <td>
            <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmessage" ErrorMessage="Please Enter Notification Message" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" colspan="2">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#000066" BorderColor="#3333FF" BorderStyle="Double" BorderWidth="3px" ForeColor="White" OnClick="btnsubmit_Click" Text="Submit" Width="142px" />
        </td>
    </tr>
</table>
</asp:Content>
