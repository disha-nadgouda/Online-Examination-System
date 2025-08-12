<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Online_Test.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style9 {
            text-align: justify;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="5" class="auto-style7">
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl="~/Images/about-us-2.png" Width="100%" />
            </td>
        </tr>
        <tr>
            <td style="padding: 20px">
                <p class="auto-style9" style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: border-box; margin: 0px 0px 31px; padding: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(51, 51, 51); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    User will be able to signup and login into the website. Users can view exams and also the scores they got in previous attempts. For ease of the user, questions are divided into different categories and further into subjects. Users can also view sample papers of different subjects. Different Validation are applying in the project to ensure proper input by the user. Users can also send messages and feedback to the site ad. This is a total dynamic project i.e. everything can be change by admin. You can add new categories for adding questions and can also delete or update already add categories. Admin can also add, delete &amp; update subjects to main categories. After adding categories &amp; subcategories admin will add questions. While adding subject admin can set marks for every correct answer and incorrect answer. As this is a total dynamic project whatever information the admin will add, the user will be able to see that information at the same time. Admin can also view feedback &amp; messages 
                    sent by users.</p>
            </td>
        </tr>
    </table>
</asp:Content>
