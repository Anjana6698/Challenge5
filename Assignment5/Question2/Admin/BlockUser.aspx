<%@ Page Title="" Language="C#" MasterPageFile="~/Question2/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlockUser.aspx.cs" Inherits="Assignment5.Question2.Admin.BlockUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="lid1" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="phone" HeaderText="Phone" />
            <asp:BoundField DataField="gender" HeaderText="Gender" />
            <asp:BoundField DataField="dob" HeaderText="DOB" />
             <asp:CommandField HeaderText="Status" ShowDeleteButton="True" DeleteText="Block" />
        </Columns>
    </asp:GridView>
</asp:Content>
