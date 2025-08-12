<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageStudent.aspx.cs" Inherits="Online_Test.Admin.ManageStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style8"><strong><span class="auto-style9">Manage Student</span></strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="studentid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField HeaderText="Delete Student" ShowDeleteButton="True" ShowHeader="True" />
                        <asp:BoundField DataField="student_seatno" HeaderText="student_seatno" SortExpression="student_seatno" />
                        <asp:BoundField DataField="student_name" HeaderText="student_name" SortExpression="student_name" />
                        <asp:BoundField DataField="student_rollno" HeaderText="student_rollno" SortExpression="student_rollno" />
                        <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                        <asp:BoundField DataField="faculty" HeaderText="faculty" SortExpression="faculty" />
                        <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                        <asp:BoundField DataField="mother_name" HeaderText="mother_name" SortExpression="mother_name" />
                        <asp:BoundField DataField="adhar_no" HeaderText="adhar_no" SortExpression="adhar_no" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                        <asp:BoundField DataField="signature" HeaderText="signature" SortExpression="signature" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="studentid" HeaderText="studentid" ReadOnly="True" SortExpression="studentid" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Student]" DeleteCommand="delete from [Student] where [studentid]=@studentid"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
