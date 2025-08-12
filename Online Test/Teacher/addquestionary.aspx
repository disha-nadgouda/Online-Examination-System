<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="addquestionary.aspx.cs" Inherits="Online_Test.Teacher.addquestionary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            height: 218px;
        }
    .auto-style9 {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="" width="80%" align="center>
        <tr>
            <td class="auto-style6" colspan="4"><strong><span class="auto-style9">
        <br />
        Add Questionary</span><hr />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style7">Subject Stream</td>
            <td class="auto-style7">
                <asp:DropDownList ID="drbstream" runat="server" Width="250px" Height="35px">
                    <asp:ListItem>BCS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style7">Subject</td>
            <td class="auto-style7">
                <asp:DropDownList ID="drbsubject" runat="server" Width="250px" AutoPostBack="True" Height="35px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Class Name</td>
            <td>
                <asp:DropDownList ID="drbclass" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drbclass_SelectedIndexChanged" Width="250px" Height="35px">
                    <asp:ListItem>FY BCS</asp:ListItem>
                    <asp:ListItem>SY BCS</asp:ListItem>
                    <asp:ListItem>TY BCS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Marks</td>
            <td>
                <asp:TextBox ID="txtmarks" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Question Id</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Enabled="False" ReadOnly="True" Height="35px" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Question</td>
            <td>
                <asp:TextBox ID="txtquestion" runat="server" TextMode="MultiLine" Height="35px" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Option A.</td>
            <td>
                <asp:TextBox ID="txtA" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
            <td>Option B.</td>
            <td>
                <asp:TextBox ID="txtB" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Option C.</td>
            <td>
                <asp:TextBox ID="txtC" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
            <td>Option D.</td>
            <td>
                <asp:TextBox ID="txtD" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Answer</td>
            <td>
                <asp:TextBox ID="txtanswer" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnew" runat="server" BackColor="#FF3300" BorderColor="#3333FF" BorderStyle="None" BorderWidth="3px" ForeColor="White" OnClick="btnnew_Click" Text="New" Width="160px" Height="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BackColor="#FF3300" BorderColor="#3333FF" BorderStyle="None" BorderWidth="3px" ForeColor="White" OnClick="btnsave_Click" Text="Save" Width="160px" Height="30px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#FF3300" BorderColor="#3333FF" BorderStyle="None" BorderWidth="3px" ForeColor="White" OnClick="btnupdate_Click" Text="Update" Width="160px" Height="30px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" BackColor="#FF3300" BorderColor="#3333FF" BorderStyle="None" BorderWidth="3px" ForeColor="White" OnClick="btndelete_Click" Text="Delete" Width="160px" Height="30px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Questionary]" ></asp:SqlDataSource>
            </td>
        </tr>
        </table>
    <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="subjectstream" HeaderText="subjectstream" SortExpression="subjectstream" />
                        <asp:BoundField DataField="subjectcode" HeaderText="subjectcode" SortExpression="subjectcode" />
                        <asp:BoundField DataField="classname" HeaderText="classname" SortExpression="classname" />
                        <asp:BoundField DataField="questionid" HeaderText="questionid" SortExpression="questionid" />
                        <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                        <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                        <asp:BoundField DataField="mark" HeaderText="mark" SortExpression="mark" />
                        <asp:BoundField DataField="optionA" HeaderText="optionA" SortExpression="optionA" />
                        <asp:BoundField DataField="optionB" HeaderText="optionB" SortExpression="optionB" />
                        <asp:BoundField DataField="optionC" HeaderText="optionC" SortExpression="optionC" />
                        <asp:BoundField DataField="optionD" HeaderText="optionD" SortExpression="optionD" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                </asp:Content>
