<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Masterpage.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="SampleProject.Guest.UserReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
   

    <form id="form1" runat="server" align="left">
        <h3 style="margin-top:100px;">User Registration</h3>
        
            <asp:Label ID="Label1" runat="server" Text="Name" ></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 92px" Width="184px"></asp:TextBox><br />
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Style="margin-left: 92px" Width="184px"></asp:TextBox><br />
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your email" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />

            <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>

            <asp:TextBox ID="TextBox3" runat="server" TextMode="Phone"  Style="margin-left: 92px" Width="184px"></asp:TextBox><br />
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your Phone number" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator><br />
            

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please check your Number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <br />

           <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="gender" Text="Others" /><br /><br />

            <asp:Label ID="dob" runat="server" Text="Dob"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label7" runat="server" Text="D:"></asp:Label>
            <asp:DropDownList ID="Ddlday" runat="server" style="margin-left: 0px"></asp:DropDownList>
            M:<asp:DropDownList ID="Ddlmonth" runat="server"></asp:DropDownList>
            Y:<asp:DropDownList ID="Ddlyear" runat="server"></asp:DropDownList><br /><br />

            
          
            <asp:Label ID="Label6" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Style="margin-left: 62px" Width="184px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your Username" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator><br />
            
            <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>

            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Style="margin-left: 74px" Width="184px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your Password" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator><br />
           
           

            Confirm  Password: 
            <asp:TextBox ID="confirmpass" runat="server" Style="margin-left: 13px" Width="184px" TextMode="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please confirm your Password" ControlToValidate="confirmpass" ForeColor="Red"></asp:RequiredFieldValidator><br />

            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords are not matching" ControlToCompare="TextBox5" ControlToValidate="confirmpass" ForeColor="Red"></asp:CompareValidator><br />
            <asp:Button ID="Button1" runat="server" Text="Register" Height="38px" style="margin-left: 88px" Width="145px" OnClick="Button1_Click"/>
            <br /><br />
            <asp:Label ID="Labelalert" runat="server" Text="" ></asp:Label>
       
    </form>

</asp:Content>
