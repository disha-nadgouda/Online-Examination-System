<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SendNotification.aspx.cs" Inherits="Online_Test.Admin.SendNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style11 {
            text-align: center;
            height: 49px;
        }
        .auto-style12 {
            height: 58px;
        }
        .auto-style13 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="4" class="auto-style1">
        <tr>
            <td class="auto-style10" colspan="2"><strong>Send Notification</strong></td>
        </tr>
        <tr>
            <td>Notification ID</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Width="225px" ReadOnly="True" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Date</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" Width="225px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="Please Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Select Class</td>
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
            <td class="auto-style12">Notification Message</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Width="225px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmessage" ErrorMessage="Please Enter Notification Message" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <strong>
                <asp:Button ID="btnsubmit" runat="server" BackColor="#000066" BorderColor="#3333FF" BorderStyle="None" BorderWidth="3px" ForeColor="White" OnClick="btnsubmit_Click" Text="Submit" Width="164px" CssClass="auto-style13" Height="39px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
