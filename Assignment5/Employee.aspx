<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Assignment5.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>
         <asp:Label ID="Label1" runat="server" Text=" Add Employee"></asp:Label>
                    </h1>
                </center>
            </div>
         <table align="center" class="auto=style1">
            <tr>
                <td>
                     <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
                </td>

                <td>
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td>
                     <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="Label4" runat="server" Text="Phone :"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="Label5" runat="server" Text="Age :"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                 </tr>
        </table>
        <br />
        <br />
        <br />
        <center>
            <h2>Employee Details</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="empId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:BoundField DataField="empname" HeaderText=" Name" />
                <asp:BoundField DataField="empemail" HeaderText="Email" />
                <asp:BoundField DataField="empphone" HeaderText="Phone" />
                <asp:BoundField DataField="empage" HeaderText="Age" />
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
            </Columns>
            </asp:GridView>
            </center>
        <div>
        </div>
    </form>
</body>
</html>
