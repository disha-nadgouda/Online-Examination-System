<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="AddExam.aspx.cs" Inherits="Online_Test.Teacher.AddExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
          
        }
        .auto-style7 {
            text-align: center;
            font-size: large;
            color: #FFFFFF;
            background-color: #FF0000;
        }
        .auto-style8 {
            text-align: center;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style9 {
          
        }
        .auto-style10 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <table class="" width="900" align="center" cellpadding="7" style="border: thin solid #000000">
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Button ID="btnexamlist" runat="server" BackColor="Red" BorderStyle="None" CssClass="auto-style5" ForeColor="White" Text="Exam List" Width="400px" PostBackUrl="~/Teacher/ExamList.aspx" Height="40px" />
            </td>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="btnaddexam1" runat="server" BackColor="Black" BorderStyle="None" CssClass="auto-style5" ForeColor="White" Text="Add Exam" Width="400px" PostBackUrl="~/Teacher/AddExam.aspx" Height="40px" />
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
                <asp:DropDownList ID="drbclass" runat="server" Width="210px" AutoPostBack="True" OnSelectedIndexChanged="drbclass_SelectedIndexChanged">
                    <asp:ListItem>FY BCS</asp:ListItem>
                    <asp:ListItem>SY BCS</asp:ListItem>
                    <asp:ListItem>TY BCS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Select Semister</td>
            <td>Select Subject</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="drbsem" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drbsem_SelectedIndexChanged" Width="210px">
                    <asp:ListItem>SEM-I</asp:ListItem>
                    <asp:ListItem>SEM-II</asp:ListItem>
                    <asp:ListItem>SEM-III</asp:ListItem>
                    <asp:ListItem>SEM-IV</asp:ListItem>
                    <asp:ListItem>SEM-V</asp:ListItem>
                    <asp:ListItem>SEM-VI</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="drbsubject" runat="server" Width="210px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [subject] FROM [subjectallocation] WHERE ([teacher] = @teacher)">
                    <SelectParameters>
                        <asp:SessionParameter Name="teacher" SessionField="Teacher" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;Exam Description</td>
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
                &nbsp; Teacher Name:&nbsp;<asp:TextBox ID="txtfaculty" runat="server" ReadOnly="True" ></asp:TextBox>
                &nbsp;
                Exam ID:
                <asp:TextBox ID="txtid" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
