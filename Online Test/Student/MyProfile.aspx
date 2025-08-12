<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Online_Test.Student.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5" style="font-size: x-large">
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="studentid" DataSourceID="SqlDataSource1" Height="50px" Width="550px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                <EditRowStyle BackColor="#999999" />
                                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                <Fields>
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
                                    <asp:CommandField ShowEditButton="True" />
                                </Fields>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Student] WHERE ([username] = @username)" UpdateCommand="update Student set [student_seatno]=@student_seatno,[student_name]=@student_name,[student_rollno]=@student_rollno,[course]=@course,[faculty]=@faculty,[class]=@class,[dob]=@dob,[gender]=@gender,[email]=@email,[contact_no]=@contact_no,[mother_name]=@mother_name,[adhar_no]=@adhar_no,[address]=@address,[photo]=@photo,[signature]=@signature,[username]=@username,[password]=@password where studentid=@studentid">
                                <SelectParameters>
                                    <asp:SessionParameter Name="username" SessionField="Student" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
