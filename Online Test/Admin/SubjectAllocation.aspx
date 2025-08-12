<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SubjectAllocation.aspx.cs" Inherits="Online_Test.Admin.SubjectAllocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style12 {
            text-align: center;
            height: 29px;
        }
        .auto-style13 {
            text-align: center;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>Subject Allocation</strong></td>
        </tr>
        <tr>
            <td class="auto-style10">Select Teacher</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:DropDownList ID="drbteacher" runat="server" DataSourceID="SqlDataSource1" DataTextField="teachername" DataValueField="teachername" Height="16px" Width="199px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [teachername] FROM [Teacher]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drbteacher" ErrorMessage="Please Select Teacher" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Select Course</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:DropDownList ID="drbcourse" runat="server" DataSourceID="SqlDataSource3" DataTextField="course" DataValueField="course" Width="199px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [course] FROM [Examdetails]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drbcourse" ErrorMessage="Please Select Course" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Select Class</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:DropDownList ID="drbclass" runat="server" DataSourceID="SqlDataSource4" DataTextField="class" DataValueField="class" Width="199px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [class] FROM [Examdetails]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drbclass" ErrorMessage="Please Select Class" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Select Semister</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:DropDownList ID="drbsem" runat="server" DataSourceID="SqlDataSource5" DataTextField="sem" DataValueField="sem" Width="199px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [sem] FROM [Examdetails]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drbsem" ErrorMessage="Please Select Semister" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Select Subject</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:DropDownList ID="drbsubject" runat="server" DataSourceID="SqlDataSource2" DataTextField="examsubject" DataValueField="examsubject" Width="199px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [examsubject] FROM [Examdetails]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="drbsubject" ErrorMessage="Please Select Subject" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#000066" BorderColor="#3333FF" BorderStyle="Double" BorderWidth="3px" ForeColor="White" OnClick="btnsubmit_Click" Text="Submit" Width="144px" />
            </td>
        </tr>
    </table>
</asp:Content>
