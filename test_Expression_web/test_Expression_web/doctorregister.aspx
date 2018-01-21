<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctorregister.aspx.cs" Inherits="test_Expression_web.doctorregister" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Registration Form</title>

    <link rel="stylesheet" href="css/form-register.css">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 3px;
            margin-top: 0px;
        }
        .auto-style4 {
            margin-left: 4px;
        }
        .auto-style8 {
            max-width: 1000px;
            width: 100%;
            font-style: normal;
            font-variant: normal;
            font-weight: bold;
            font-size: 14px;
            line-height: normal;
            font-family: sans-serif;
            text-align: center;
            margin-left: auto;
            margin-right: 0px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .auto-style11 {
            margin-left: 7px;
            margin-top: 0px;
        }
        </style>
</head>
<body>

<div class="main-content">
    <!-- You only need this form and the form-register.css -->
    <form class="auto-style8" id="form1" runat="server">
        <div class="form-register-with-email">
            <div class="form-white-background"  >
                <div class="form-title-row">
                    <h1>Registration form for Doctors</h1>
                </div>
                <div class="form-row" >
                  
                       
                        <asp:textbox runat="server" ID="name" ToolTip="Enter your name" placeholder="Your Name"></asp:textbox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" CssClass="auto-style2" ErrorMessage="Please enter your name" ForeColor="Red" Width="238px" Height="31px"></asp:RequiredFieldValidator>
                    </div>
                  
                  
                
                 <div class="form-row" >
              
                     
                        <asp:textbox runat="server" ID="id" ToolTip="Enter your ID" placeholder="Your ID"></asp:textbox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="id" CssClass="auto-style4" ErrorMessage="Please enter your ID" ForeColor="Red" Width="207px" Height="29px"></asp:RequiredFieldValidator>
                   
                </div>
           
                <div class="form-row" >
               
                   <asp:textbox runat="server" ID="tp" ToolTip="Enter your TP" placeholder="Your TP" ></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tp" CssClass="auto-style2" ErrorMessage="Please enter your TP" ForeColor="Red" Width="205px" Height="26px"></asp:RequiredFieldValidator>
                  
                </div>
              
                 <div class="form-row">
                
                       
                        <asp:textbox runat="server" ID="age" ToolTip="Enter your Age" placeholder="Your Age"></asp:textbox>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style2" ControlToValidate="age" ErrorMessage="Please enter your Age" ForeColor="Red" Width="204px" Height="31px"></asp:RequiredFieldValidator>
                   
                    
                </div>
            
                <div class="form-row">
                    <label>
                         <div class="form-row" style="width: 314px; margin-left: 0px;">
                    <label>
                        
                             Gender&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:dropdownlist ID="gen" runat="server" Height="45px" Width="120px">
                                 <asp:ListItem>Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                             </asp:dropdownlist>
                    </label>
                </div>
                      <div>
                         
                        <asp:textbox runat="server" ID="email" ToolTip="Enter your Email" placeholder="Your E-mail"></asp:textbox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="auto-style2" ControlToValidate="email" ErrorMessage="Invalid email" Width="180px" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Height="34px"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="auto-style11" ErrorMessage="Please enter your Email" ForeColor="Red" Width="217px" ControlToValidate="email" Height="16px"></asp:RequiredFieldValidator>
                   
                
                </div>
                 
                <div class="form-row" >
               
                       
                        <asp:textbox runat="server" ID="password" ToolTip="Enter  password" placeholder="Password"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="password" CssClass="auto-style2" ErrorMessage="Please enter password" ForeColor="Red" Width="208px" BorderStyle="None" Height="25px"></asp:RequiredFieldValidator>
                    
                </div>
                
                 <div class="form-row" >
                
                     
                        <asp:textbox runat="server" ID="Repassword" ToolTip="Re-enter password" placeholder="Re-enter password"></asp:textbox>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="Repassword" Display="Dynamic" ErrorMessage="Passwords not match" ForeColor="Red"></asp:CompareValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Repassword" CssClass="auto-style2" ErrorMessage="Please Re enter password" ForeColor="Red" Width="238px" Height="16px" Display="Dynamic"></asp:RequiredFieldValidator>
                   
                </div>
          
                <div class="form-row" style="width: 225px; margin-left: 2px">
                    <asp:button runat="server" text="Register" OnClick="Unnamed9_Click" BackColor="#0099FF" ForeColor="White" CssClass="auto-style1" Height="45px" Width="226px" />
                </div>
                <a href="Doctorlogin.aspx" class="form-create-an-account">Already have account an account &rarr;</a>
            </div>
             
        </div>

    </form>
</div>
</body>

</html>
