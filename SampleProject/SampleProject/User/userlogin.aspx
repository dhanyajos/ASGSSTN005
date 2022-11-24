<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="SampleProject.User.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <form id="form1" runat="server">

            <h2 style="margin-left: 500px;margin-top: 100px" >Profile Details</h2>
        
            <asp:Label ID="Label1" runat="server" Text="Customer Name:" style="margin-left: 500px"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="Email:" style="margin-left: 500px"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br /><br />
           
            <asp:Label ID="Label5" runat="server" Text="Phone:" style="margin-left: 500px"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br /><br/>
            <asp:Label ID="Label7" runat="server" Text="Gender:" style="margin-left: 500px"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Label ID="Label9" runat="server" Text="Dob:" style="margin-left: 500px"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
    
    </form>
</asp:Content>
