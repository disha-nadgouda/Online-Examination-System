<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Online Test.aspx.cs" Inherits="Online_Test.User.Online_Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 90%;
        }
        .auto-style8 {
            height: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="5" class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Select Course</td>
            <td class="auto-style8">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal" CellPadding="10">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("course") %>' Text='<%# Eval("course") %>' BackColor="#009999" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" Width="200px" style="border-radius:20px;" OnClick="Button2_Click"/>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [course] FROM [Examdetails]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Select Class </td>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4" RepeatDirection="Horizontal" CellPadding="10" RepeatColumns="5">
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" Text='<%# Eval("class") %>' BackColor="#009999" BorderStyle="None" CommandArgument='<%# Eval("class") %>' Font-Bold="True" ForeColor="White" Height="40px" Width="200px"  style="border-radius:20px;" OnClick="Button3_Click"/>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [class] FROM [Examdetails] WHERE ([course] = @course)">
                    <SelectParameters>
                        <asp:SessionParameter Name="course" SessionField="course" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [class] FROM [Examdetails] WHERE ([class] = @class)">
                    <SelectParameters>
                        <asp:SessionParameter Name="course" SessionField="course" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Select Sem</td>
            <td>
                <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource5" RepeatDirection="Horizontal" CellPadding="10" RepeatColumns="5">
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" Text='<%# Eval("sem") %>' BackColor="#009999" BorderStyle="None" CommandArgument='<%# Eval("sem") %>' Font-Bold="True" ForeColor="White" Height="40px" Width="200px"  style="border-radius:20px;" OnClick="Button3_Click3" />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [sem] FROM [Examdetails] WHERE ([class] = @class)">
                    <SelectParameters>
                        <asp:SessionParameter Name="class" SessionField="class" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Select Subject</td>
            <td>
                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal" CellPadding="10" RepeatColumns="5">
                    <ItemTemplate>
                        <asp:Button ID="Button5" runat="server" Text='<%# Eval("examsubject") %>' BackColor="#009999" BorderStyle="None" CommandArgument='<%# Eval("examsubject") %>' Font-Bold="True" ForeColor="White" Height="40px" Width="200px"  style="border-radius:20px;" OnClick="Button3_Click1" />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [examsubject] FROM [Examdetails] WHERE (([class] = @class) AND ([sem] = @sem))">
                    <SelectParameters>
                        <asp:SessionParameter Name="class" SessionField="class" Type="String" />
                        <asp:SessionParameter Name="sem" SessionField="sem" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="Button4" runat="server" BackColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" Text="Start Exam" Width="200px" OnClick="Button4_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
