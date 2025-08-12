<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ApproveExam.aspx.cs" Inherits="Online_Test.Admin.ApproveExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        text-align: center;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="4" class="auto-style1">
    <tr>
        <td class="auto-style10"><strong>Approve Exam </strong></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="examid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="REJECT" ShowDeleteButton="True" />
                    <asp:BoundField DataField="examid" HeaderText="examid" ReadOnly="True" SortExpression="examid" />
                    <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                    <asp:BoundField DataField="examsubject" HeaderText="examsubject" SortExpression="examsubject" />
                    <asp:BoundField DataField="examdescription" HeaderText="examdescription" SortExpression="examdescription" />
                    <asp:BoundField DataField="examdate" HeaderText="examdate" SortExpression="examdate" />
                    <asp:BoundField DataField="examduration" HeaderText="examduration" SortExpression="examduration" />
                    <asp:BoundField DataField="totalmarks" HeaderText="totalmarks" SortExpression="totalmarks" />
                    <asp:BoundField DataField="noofquestion" HeaderText="noofquestion" SortExpression="noofquestion" />
                    <asp:BoundField DataField="examstarttime" HeaderText="examstarttime" SortExpression="examstarttime" />
                    <asp:BoundField DataField="examendtime" HeaderText="examendtime" SortExpression="examendtime" />
                    <asp:BoundField DataField="Facultyname" HeaderText="Facultyname" SortExpression="Facultyname" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Examdetails]"
                 DeleteCommand="delete from [Examdetails] where [examid]=@examid"
                ></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
