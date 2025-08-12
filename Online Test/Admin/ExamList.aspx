<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ExamList.aspx.cs" Inherits="Online_Test.Admin.ExamList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: medium;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            margin-left: 0px;
        }
        .auto-style5 {
            font-size: large;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class=""width="900" align="center" cellpadding="7" style="border: thin solid #000000">
        <tr>
            <td style="background-color: #FF3300">
                <asp:Button ID="Button5" runat="server" BackColor="Red" BorderStyle="None" CssClass="auto-style5" ForeColor="White" Text="Exam List" Width="510px" Height="40px" PostBackUrl="~/Admin/ExamList.aspx" />
            </td>
            <td style="background-color: #000000">
                <asp:Button ID="Button6" runat="server" BackColor="Black" BorderStyle="None" CssClass="auto-style5" ForeColor="White" Text="Add Exam" Width="510px" Height="40px" PostBackUrl="~/Admin/AddExam.aspx" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="auto-style6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="examid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="examid" HeaderText="examid" ReadOnly="True" SortExpression="examid" />
                            <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                            <asp:BoundField DataField="examsubject" HeaderText="examsubject" SortExpression="examsubject" />
                            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                            <asp:BoundField DataField="examdate" HeaderText="examdate" SortExpression="examdate" />
                            <asp:BoundField DataField="examduration" HeaderText="examduration" SortExpression="examduration" />
                            <asp:BoundField DataField="totalmarks" HeaderText="totalmarks" SortExpression="totalmarks" />
                            <asp:BoundField DataField="noofquestion" HeaderText="noofquestion" SortExpression="noofquestion" />
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
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [examid], [course], [examsubject], [class], [examdate], [examduration], [totalmarks], [noofquestion] FROM [Examdetails]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">You have selected Exam Id
                <asp:Label ID="lblexamid" runat="server"></asp:Label>
&nbsp;Course:<asp:Label ID="lblcourse" runat="server"></asp:Label>
&nbsp; Subject:<asp:Label ID="lblsubject" runat="server"></asp:Label>
&nbsp; Class:<asp:Label ID="lblclass" runat="server"></asp:Label>
&nbsp; Date:<asp:Label ID="lbldate" runat="server"></asp:Label>
&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="Button8" runat="server" BackColor="#009999" CssClass="auto-style10" Text="Set Question Paper" Width="220px" />
            </td>
        </tr>
    </table>
</asp:Content>
