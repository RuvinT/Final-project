<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordResetpage.aspx.cs" Inherits="test_Expression_web.PasswordResetpage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>password reset</title>


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
                        <h1>Set your new password</h1>
                    </div>

                    <div class="form-row">
                       
                            
                            <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                      
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="checkemail" Display="Dynamic" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="checkemail" Display="Dynamic" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      
                    </div>

                    <div class="form-row">
                      
                           
                            <asp:TextBox ID="password" runat="server" placeholder="Password"></asp:TextBox>
                 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="checkpassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                    </div>

                    <div class="form-row">
                       <asp:Button ID="log" runat="server" Text="Set new password" BackColor="#0099FF" CssClass="auto-style1" ForeColor="White" Width="266px" OnClick="log_Click" />
                    </div>

            

        </form>

    </div>

</body>

</html>
