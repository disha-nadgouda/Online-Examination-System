<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="Online_Test.Student.Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="5" cellspacing="0" class="">
        <tr>
            <td>
                <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource8" 
                    RepeatColumns="2" RepeatDirection="Horizontal" style="font-size: medium" 
                    Width="700px" >
                    <ItemTemplate>
                        S<span style="font-size: large">tudent seatno</span>: <strong>
                        <asp:Label ID="student_seatnoLabel" runat="server" CssClass="style10" style="color: #993300" Text='<%# Eval("student_seatno") %>' Width="200px" />
                        <br />
                        </strong>S<span style="font-size: large">tudent name:</span> <strong>
                        <asp:Label ID="student_nameLabel" runat="server" CssClass="style10" style="color: #993300" Text='<%# Eval("student_name") %>' Width="400px" />
                        </strong>
                        <br />
                        C<span style="font-size: large">ourse:</span> <strong>
                        <asp:Label ID="courseLabel" runat="server" CssClass="style10" style="color: #993300" Text='<%# Eval("course") %>' Width="200px" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; C<span style="font-size: large">lass:</span> <strong>
                        <asp:Label ID="classLabel" runat="server" CssClass="style10" style="color: #993300" Text='<%# Eval("class") %>' />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [student_seatno], [student_name], [course], [faculty], [class], [username], [studentid] FROM [Student] WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="Student" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [student_seatno], [student_name], [course], [faculty], [class], [subject] FROM [Student] WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="Student" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList10" runat="server" DataKeyField="examid" 
                    DataSourceID="SqlDataSource17" RepeatColumns="1" RepeatDirection="Horizontal" Width="823px">
                    <ItemTemplate>
                        <table align="center" border="1" cellpadding="4" style="width: 100%; border: 1px solid #808080">
                            <tr>
                                <td>Exam Id</td>
                                <td>
                                    <asp:Label ID="lblexamid" runat="server" CssClass="style10" Text='<%# Eval("examid") %>' />
                                </td>
                                <td>Subject</td>
                                <td>
                                    <asp:Label ID="examsubjectLabel" runat="server" CssClass="style10" Text='<%# Eval("examsubject") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>
                                    <asp:Label ID="examdescriptionLabel" runat="server" CssClass="style10" Text='<%# Eval("examdescription") %>' />
                                </td>
                                <td>Exam Date</td>
                                <td>
                                    <asp:Label ID="examdateLabel" runat="server" CssClass="style10" Text='<%# Eval("examdate") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Duration</td>
                                <td>
                                    <asp:Label ID="examdurationLabel" runat="server" CssClass="style10" Text='<%# Eval("examduration") %>' />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Total Marks</td>
                                <td>
                                    <asp:Label ID="totalmarksLabel" runat="server" CssClass="style10" Text='<%# Eval("totalmarks") %>' />
                                </td>
                                <td>No Of Question</td>
                                <td>
                                    <asp:Label ID="noofquestionLabel" runat="server" CssClass="style10" Text='<%# Eval("noofquestion") %>' />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Examdetails] WHERE (([class] = @class) AND ([course] = @course) AND ([examsubject] = @examsubject))">
                    <SelectParameters>
                        <asp:SessionParameter Name="class" SessionField="class" Type="String" />
                        <asp:SessionParameter Name="course" SessionField="course" Type="String" />
                        <asp:SessionParameter Name="examsubject" SessionField="subject" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Examdetail] WHERE (([examname] = @examname) AND ([examdate] = @examdate))">
                    <SelectParameters>
                        <asp:SessionParameter Name="examname" SessionField="ename" Type="String" />
                        <asp:SessionParameter Name="examdate" SessionField="edate" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: x-large">Click Here to Submit Exam</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="Button4" runat="server" BackColor="#990000" BorderStyle="None" CssClass="style3" ForeColor="White" Height="39px" OnClick="Button4_Click" Text="Complete Exam" Width="253px" />
                </strong>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Marks:<strong><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </strong>&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Exam Start Time:
                <asp:Label ID="lblstarttime" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Exam End Time:&nbsp;
                <asp:Label ID="lblendtime" runat="server"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td class="" valign="top">
                <table align="center" cellpadding="5" cellspacing="0" class="">
                    <tr>
                        <td class="">
                            <asp:Panel ID="Panel1" runat="server" Height="2000px" 
                                style="margin-bottom: 0px" Width="696px">
                                <div style="text-align: left">
                                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource11">
                                        <ItemTemplate>
                                            <table align="left" cellpadding="4" class="style9">
                                                <tr>
                                                    <td>Question:</td>
                                                    <td><strong>
                                                        <asp:Label ID="lblques" runat="server" Text='<%# Eval("question") %>' Width="700px"></asp:Label>
                                                        </strong></td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td valign="top">Answer:</td>
                                                    <td>
                                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text='<%# Eval("optionA") %>'  />
                                                        &nbsp;&nbsp;
                                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text='<%# Eval("optionB") %>' />
                                                        <br />
                                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="a" Text='<%# Eval("optionC") %>' />
                                                        <br />
                                                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="a" Text='<%# Eval("optionD") %>' />
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="Button3" runat="server" BackColor="Red" BorderStyle="None" CommandArgument='<%# Eval("questionid") %>' ForeColor="White" Height="29px" style="font-weight: 700" Text="Submit" Width="134px" OnClick="Button3_Click" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                        &nbsp;&nbsp;
                                                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                                        &nbsp;&nbsp;
                                                        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">
                                                        <hr />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>
                                <br />
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    SelectCommand="SELECT * FROM [type1view] WHERE (([subject] = @subject) AND ([date] = @date))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblsubject" Name="subject" PropertyName="Text" 
                                            Type="String" />
                                        <asp:ControlParameter ControlID="lblexamdate" Name="date" PropertyName="Text" 
                                            Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT  * FROM [Questionary] WHERE (([classname] = @classname) AND ([subjectcode] = @subjectcode))">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="classname" SessionField="class" Type="String" />
                                        <asp:SessionParameter Name="subjectcode" SessionField="subject" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Type2]"></asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT * FROM [type3view]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Type3]"></asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [type4view]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Type4]"></asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource14" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [type5view]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Type5]"></asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource15" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT * FROM [Questionary] WHERE (([classname] = @classname) AND ([subjectstream] = @subjectstream))">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="classname" SessionField="class" Type="String" />
                                        <asp:SessionParameter Name="subjectstream" SessionField="subject" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Type6]"></asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource16" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT * FROM [type7view]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [Type7]"></asp:SqlDataSource>
                                <br />
                                <asp:Label ID="lblsname" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="lblexamdate" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="lblsubject" runat="server" Text="Label" Visible="False"></asp:Label>
                                <br />
                                <br />
                            </asp:Panel>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
</asp:Content>
