<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="SetQuestionPaper.aspx.cs" Inherits="Online_Test.Teacher.SetQuestionPaper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style5
        {
            width: 90%;
        }
        .style7
        {
            color: #000099;
        }
        .style7
        {
            font-size: large;
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<table align="center" cellpadding="5" class="style5">
    <tr>
        <td style="font-weight: 700; font-size: x-large">Set Question Paper<hr /></td>
        <td style="font-weight: 700; font-size: x-large">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;Course :
            <asp:Label ID="lblstream" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
&nbsp;&nbsp; Subject :
                        <asp:Label ID="lblsubject" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
&nbsp; Class :
                        <asp:Label ID="lblclass" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
&nbsp;Date :
                        <asp:Label ID="lbldate" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
&nbsp;&nbsp;
                        <asp:Label ID="lblid" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td valign="top">
            <table cellpadding="2" cellspacing="1">
                <tr>
                    <td class="style7" colspan="2"><strong>Select Qustions</strong></td>
                </tr>
                <tr>
                    <td valign="top" colspan="2">
                        <table cellpadding="10" border="1" cellspacing="0" height="700">
                            <tr>
                                <td valign="top">&nbsp;</td>
                                <td valign="top">
                                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT DISTINCT [questiontype] FROM [Type6]"></asp:SqlDataSource>
                                </td>
                                <td valign="top">
                                    <asp:DataList ID="DataList14" runat="server" DataSourceID="SqlDataSource15" 
                                RepeatColumns="1" Visible="False">
                                        <ItemTemplate>
                                            <table cellpadding="3" class="">
                                                <tr>
                                                    <td valign="top">
                                                        <asp:Button ID="btntype6ques" runat="server" BackColor="Red" BorderStyle="None" 
                                                    CommandArgument='<%# Eval("questionid") %>' ForeColor="White" 
                                                  style="font-weight: 700" Text="Select Question" 
                                                    onclick="btntype6ques_Click" />
                                                    </td>
                                                    <td><strong>Question: 
                                                        <br />
                                                        </strong>&nbsp;<asp:Label ID="Label16" runat="server" 
                                                    Height="40px" Text='<%# Eval("questiontype") %>' Width="300px"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td><strong>Answer:</strong><asp:Label ID="Label17" runat="server" Text='<%# Eval("answer1") %>' 
                                                    Width="200px"></asp:Label>
                                                        <br />
                                                        <strong>Answer:</strong><asp:Label ID="Label18" runat="server" 
                                                    Text='<%# Eval("answer2") %>' Width="200px"></asp:Label>
                                                        <br />
                                                        <strong>Answer:</strong><asp:Label ID="Label19" runat="server" 
                                                    Text='<%# Eval("answer3") %>' Width="200px"></asp:Label>
                                                        <br />
                                                        <strong>Answer:</strong><asp:Label ID="Label6" runat="server" 
                                                    Text='<%# Eval("answer4") %>' Width="200px"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource15" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT * FROM [Type6]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
        <td valign="top">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [question], [mark], [answer], [questionid] FROM [type1]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
