<%@ Page Title="" Language="C#" MasterPageFile="~/Question2/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Assignment5.Question2.User.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <center>
            User Details
        </center>
    </h1>
    <center>
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
    <br />
     <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;
     <br />
     <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
     <br />
     <br />
    &nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text=" "></asp:Label>
     <br />
     <br />
    &nbsp;
    <asp:Label ID="Label9" runat="server" Text="DOB"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text=" "></asp:Label>
        </center>
</asp:Content>
