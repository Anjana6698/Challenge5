<%@ Page Title="" Language="C#" MasterPageFile="~/Question2/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment5.Question2.Guest.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <%--<form id="form1" runat="server">--%>
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2">Login</td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </td>
         </tr>
    </table>
    <%--</form>--%>
</asp:Content>
