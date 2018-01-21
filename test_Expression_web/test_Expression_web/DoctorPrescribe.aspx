<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorPrescribe.aspx.cs" Inherits="test_Expression_web.DoctorPrescribe" %>


<!DOCTYPE html>
<html >
<head runat="server">
  <meta charset="UTF-8">
  <title>Doctor prescription</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style11.css">

  
</head>

<body>
     
  <div class="user">
    <header class="user__header">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="" />
        <h1 class="user__title">Prescription</h1>
    </header>
    
    <form class="form" runat="server">

        <div style="height: 89px" >
            <asp:TextBox ID="pacientid" runat="server" Height="80px" Width="291px" Font-Size="Large"></asp:TextBox> 
        </div><br/>
        
       

        <div class="form__group">
            <asp:Label ID="Pname"  class="form__input" runat="server" Text="Label"></asp:Label>
        </div><br/>
        
        <div class="form__group">
            <asp:Label ID="Date_issued"  class="form__input" runat="server" Text="Label"></asp:Label>
        </div><br/>
        
        <div class="form__group">
            <asp:Label ID="docname"  class="form__input" runat="server" Text="Label"></asp:Label>
        </div><br/>

         
        <div class="form__group">
            <asp:Label ID="hospital"  class="form__input" runat="server" Text="Label"></asp:Label>
        </div><br/>
         
        <div class="form__group">
            <asp:Label ID="email"  class="form__input" runat="server" Text="Label"></asp:Label>
        </div><br/>

        <div class="form__group">
            <asp:TextBox id="TextArea" TextMode="multiline" Columns="50" Rows="5" runat="server" />
        </div><br/>
         <div class="form__group">
           <asp:TextBox ID="nextdate" runat="server"></asp:TextBox>
        </div><br/>
        
       <asp:Button ID="Button1" runat="server" class="btn"  Text="View Details" OnClick="Button1_Click" />
         <asp:Button ID="Button2" runat="server" class="btn"  Text="Prescribe" OnClick="Button2_Click" />

    </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
