<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Masterpage.Master" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="SampleProject.Guest.loginform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
   
    <form id="form1" runat="server">
         <h2 style="margin-left: 540px;margin-top: 100px" >Sign In</h2>
            
        <table border="0">
           <tr>
               <td> 
                   <asp:Label ID="Label3" runat="server" Text="Username" style="margin-left: 500px"></asp:Label>
               </td>
           </tr>
           
           <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="185px" style="margin-left: 500px"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td>

                </td>
            </tr>
          <tr>
                <td>
                     <asp:Label ID="Label1" runat="server" Text="Password" style="margin-left: 500px"></asp:Label>
                </td>
            </tr>
           
             <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="29px" TextMode="Password" style="margin-left: 500px" Width="185px"></asp:TextBox>
         
                </td>
            </tr>
             <tr>
                <td>

                </td>
            </tr>
             <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" Height="34px" OnClick="Button1_Click" style="margin-left: 500px" Width="113px" /><br /><br />
           
                </td>
            </tr>
        
       </table>
    </form>
   
         
</asp:Content>
