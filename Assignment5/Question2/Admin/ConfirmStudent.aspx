<%@ Page Title="" Language="C#" MasterPageFile="~/Question2/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ConfirmStudent.aspx.cs" Inherits="Assignment5.Question2.Admin.Confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--<form id="form1" runat="server">--%>

     <asp:GridView ID="GridView1" runat="server" DataKeyNames="lid" AutoGenerateColumns="False" OnRowDeleting="Gridview1_RowDeleting"  >
                <Columns>
                     <asp:BoundField DataField="name" HeaderText="Name" />
                     <asp:BoundField DataField="Email" HeaderText="Email" />
                     <asp:BoundField DataField="phone" HeaderText="Phone" />
                     <asp:BoundField DataField="gender" HeaderText="Gender" />
                     <asp:BoundField DataField="dob" HeaderText="Dob" />
                
                    <asp:CommandField HeaderText="Status" ShowDeleteButton="True" DeleteText="confirm" />
                </Columns>
         </asp:GridView>
     <%--</form>--%>
</asp:Content>
