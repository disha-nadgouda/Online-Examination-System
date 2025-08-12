<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddExam.aspx.cs" Inherits="Online_Test.Admin.AddExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            font-size: large;
            margin-left: 177px;
        }
        .auto-style10 {
            height: 29px;
        }
        .auto-style5 {
            font-size: large;
            text-align: center;
        }
        .auto-style11 {
            height: 39px;
        }
        .auto-style12 {
            height: 41px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="" width="900" align="center" cellpadding="7" style="border: thin solid #000000">
        <tr>
            <td class="auto-style7" colspan="2" style="background-color: #FF3300">
                <asp:Button ID="btnexamlist" runat="server" BackColor="Red" BorderStyle="None" CssClass="auto-style5" ForeColor="White" Text="Exam List" Width="400px" PostBackUrl="~/Admin/ExamList.aspx" Height="40px" />
            </td>
            <td class="auto-style8" colspan="2" style="background-color: #000000">
                <asp:Button ID="btnaddexam1" runat="server" BackColor="Black" BorderStyle="None" CssClass="auto-style5" ForeColor="White" Text="Add Exam" Width="400px" PostBackUrl="~/Admin/AddExam.aspx" Height="40px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6">Select Course</td>
            <td class="auto-style6">Class Name</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style9">
                <asp:DropDownList ID="drbcourse" runat="server" Width="210px">
                    <asp:ListItem>BCS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="drbclass" runat="server" Width="210px" AutoPostBack="True" OnSelectedIndexChanged="drbclass_SelectedIndexChanged" >
                    <asp:ListItem>FY BCS</asp:ListItem>
                    <asp:ListItem>SY BCS</asp:ListItem>
                    <asp:ListItem>TY BCS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11">Select Semister</td>
            <td class="auto-style11">Select Subject</td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style12">
                <asp:DropDownList ID="drbsem" runat="server" AutoPostBack="True" Width="210px" OnSelectedIndexChanged="drbsem_SelectedIndexChanged1">
                    <asp:ListItem>SEM-I</asp:ListItem>
                    <asp:ListItem>SEM-II</asp:ListItem>
                    <asp:ListItem>SEM-III</asp:ListItem>
                    <asp:ListItem>SEM-IV</asp:ListItem>
                    <asp:ListItem>SEM-V</asp:ListItem>
                    <asp:ListItem>SEM-VI</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="drbsubject" runat="server" Width="210px" AutoPostBack="True" >
                </asp:DropDownList>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                Exam Description</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtexamdescription" runat="server" Width="210px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Exam Date</td>
            <td>Exam Duration</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" Width="210px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtexamduration" runat="server" Width="210px"></asp:TextBox>
                min</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Exam Total Marks</td>
            <td>Total number of Questions</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txttotalmarks" runat="server" Width="210px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txttotalquestions" runat="server" Width="210px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Exam Start Time</td>
            <td>Exam End Time</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtstarttime" runat="server" Width="210px" TextMode="Time"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtexamendtime" runat="server" Width="210px" TextMode="Time"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2" class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnaddexam" runat="server" BackColor="Red" BorderColor="#3333FF" BorderStyle="None" BorderWidth="3px" ForeColor="White" Text="Add Exam" Width="160px" OnClick="btnaddexam_Click" Font-Bold="True" Height="35px"  />
                &nbsp; Teacher Name:&nbsp;<asp:TextBox ID="txtfaculty" runat="server"></asp:TextBox>
                &nbsp;
                Exam ID:
                <asp:TextBox ID="txtid" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
