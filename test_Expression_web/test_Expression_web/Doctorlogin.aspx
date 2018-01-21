<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctorlogin.aspx.cs" Inherits="test_Expression_web.Doctorlogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Login Form for doctors</title>


	<link rel="stylesheet" href="css/form-login.css">

    <style type="text/css">
        .auto-style1 {
            margin-left: 131px;
        }
    </style>

</head>


	
<body>

    <div class="main-content">

        <!-- You only need this form and the form-login.css -->

       <form id="form2" runat="server"  class="form-login" >

            <div class="form-log-in-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Log in</h1>
                    </div>

                    <div class="form-row">
                       
                            
                            <asp:TextBox ID="checkemail" runat="server" placeholder="Email"></asp:TextBox>
                      
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="checkemail" Display="Dynamic" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="checkemail" Display="Dynamic" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      
                    </div>

                    <div class="form-row">
                      
                           
                            <asp:TextBox ID="checkpassword" runat="server" placeholder="Password"></asp:TextBox>
                 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="checkpassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                    </div>

                    <div class="form-row">
                       <asp:Button ID="log" runat="server" Text="Log In" BackColor="#0099FF" CssClass="auto-style1" ForeColor="White" Width="266px" OnClick="log_Click" />
                    </div>

                </div>

              
                <a href="doctorregister.aspx" class="form-create-an-account" >Create an account &rarr;</a>

            </div>

            

        </form>

    </div>

</body>

</html>