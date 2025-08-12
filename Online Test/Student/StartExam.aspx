<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StartExam.aspx.cs" Inherits="Online_Test.Student.StartExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="4" cellspacing="4" class="auto-style1">
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Select Exam</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="168px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Exam Date</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="168px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Select Subject</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Width="168px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button2" runat="server" BackColor="#000066" BorderColor="#3333FF" BorderStyle="Double" BorderWidth="3px" ForeColor="White" style="margin-left: 0px" Text="Start" Width="142px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
