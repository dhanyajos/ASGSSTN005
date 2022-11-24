<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="blockuser.aspx.cs" Inherits="SampleProject.admin.blockuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
     <form id="form1" runat="server">
        <h3 style="margin-top:80px;"> Block User</h3>
            <asp:GridView ID="GridView2" runat="server" DataKeyNames="lid1" OnRowDeleting="GridView1_RowDeleting1" AutoGenerateColumns="False"  >
                <Columns>
                     <asp:BoundField DataField="Name" HeaderText="Name" />
                     <asp:BoundField DataField="Email" HeaderText="Email" />
                     <asp:BoundField DataField="Phone" HeaderText="Phone Number" />
                     <asp:BoundField DataField="Gender" HeaderText="Gender" />
                     <asp:BoundField DataField="Dob" HeaderText="DOB" />
                
                    <asp:CommandField HeaderText="Status" ShowDeleteButton="True" DeleteText="block" />
                </Columns>
                
            </asp:GridView>        
    </form>
</asp:Content>
