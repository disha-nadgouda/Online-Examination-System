<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="sendnotification.aspx.cs" Inherits="Online_Test.Teacher.sendnotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style7 {
        text-align: center;
    }
        .auto-style8 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6" colspan="2"><strong>Send Notification</strong></td>
    </tr>
    <tr>
        <td>Notification Id</td>
        <td>
            <asp:TextBox ID="txtid" runat="server" Width="225px" ReadOnly="True" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style8">
            </td>
    </tr>
    <tr>
        <td>Date</td>
        <td>
            <asp:TextBox ID="txtdate" runat="server" Width="225px" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="Please Select Date" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Select class</td>
        <td>
            <asp:DropDownList ID="drbclass" runat="server" Width="225px">
                <asp:ListItem>FY BCS</asp:ListItem>
                <asp:ListItem>SY BCS</asp:ListItem>
                <asp:ListItem>TY BCS</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drbclass" ErrorMessage="Please Select Class" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Notification message</td>
        <td>
            <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmessage" ErrorMessage="Please Enter Notification Message" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#000066" BorderColor="#3333FF" BorderStyle="Double" BorderWidth="3px" ForeColor="White" OnClick="btnsubmit_Click" Text="Submit" Width="142px" />
        </td>
    </tr>
</table>
</asp:Content>
