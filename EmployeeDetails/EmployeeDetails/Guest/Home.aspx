<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmployeeDetails.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="margin-left: 400px; margin-top: 50px;">Add Employee</h3>
        <table style="margin-left: 400px; margin-top: 50px;">

            <tr>
                <td width="200">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td width="200">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Add" Width="107px" OnClick="Button1_Click" />
                </td>

            </tr>
        </table>

        <br />
        <h3 style="margin-left: 400px;">Employee Details</h3>
        <br />
        <asp:GridView ID="GridView1" runat="server" Style="margin-left: 300px;" Width="720px" AutoGenerateColumns="False" DataKeyNames="empid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>

                <asp:BoundField DataField="empname" HeaderText="Employee Name" />
                <asp:BoundField DataField="empemail" HeaderText="Email ID" />
                <asp:BoundField DataField="empphn" HeaderText="Contact No" />
                <asp:BoundField DataField="empage" HeaderText="Age" />
                <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White" CausesValidation="False" CommandName="Edit" Text="Edit "></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                <asp:HyperLinkField DataNavigateUrlFields="empid" DataNavigateUrlFormatString="test.aspx?empid={0}" HeaderText="Viewmore" Text="Go" />


            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
