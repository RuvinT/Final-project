<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookP1.aspx.cs" Inherits="test_Expression_web.BookP1" %>


<!DOCTYPE html>

<html lang="en" class="velocity "><head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		
		<title>Health Pack</title>
		<!-- /title -->

		<!-- styles -->
		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/ubuntu.css">

		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/font-awesome.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/bootstrap.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/default.css">

		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/default.date.css">

		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/default.time.css">

		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/style.css">

		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/bootstrap-chosen.css">

		<!--		NEW UI-->
		<link media="all" type="text/css" rel="stylesheet" href="./Book1_files/style-new.css">

				<!-- /styles -->

		<!--[if lt IE 9]>
		  <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="//oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->

	</head>
	<body>

		<!-- Google Tag Manager -->

<!-- End Google Analytics -->

		<!-- Start - Page Content -->
		<header class="main">
			<div class="container header__container">
				<div class="row header__row">
					<div class="col-md-2 col-sm-4 mobile-col-auto left-col">
						<h1 class="header__logo">
							<a class="logo" href="https://www.doc.lk/"></a>
						</h1>
					</div>
					<div class="col-md-10 col-sm-8 mobile-col-auto right-col">
						<div class="header__links">
														<div class="buttons">								
								<a href="https://www.doc.lk/my-bookings" class="my-bookings-button link-my-bookings--pc">My Bookings</a>
								<a href="login.aspx" class="button-primary button-primary-outline">Login</a>
								<a href="register.aspx" class="button-primary">Sign Up</a>								
							</div>
													</div>
					</div>
				</div>
								<div class="my-bookings-button link-my-bookings--mobile">
					<a href="https://www.doc.lk/my-bookings">My Bookings</a>
				</div>
							</div>
		</header>
		
		<div class="add-padding--top"></div>	
		
		<div id="system-messages">

	
		
	
		
		
	
	
	
	
</div>		
<section class="container-sessions">
	<h3 class="ui-component-note">
        <asp:Label ID="hospital" runat="server" Text="Label"></asp:Label></h3>
	<div class="ui-profile">
		<div class="doctor-profile">
			<div class="doctor-photo"><img src="./Book1_files/doctor-default.gif"></div>
			<div class="doctor-quick-details">
				<ul>
					<li class="doctor-name">
                        <asp:Label ID="doctor" runat="server" Text="Label"></asp:Label> <span class="doctor-qualifications"></span></li>

										<li class="doctor-title">
						Surgeon
					</li>
										
				</ul>
			</div>
		</div>
	</div>

	<div class="ui-profile-sessions">
		<ul>
			<li>
	<div class="ui-component ui-component-primary ui-component-sessions">

		<div class="ui-component-content">
			<div class="session-quick-details">
				<ul>
					<li class="session-date">
                        <asp:Label ID="date" runat="server" Text="Label"></asp:Label></li>
					<li class="session-time">
                        <asp:Label ID="time" runat="server" Text="Label"></asp:Label></li>
				</ul>
			</div>
						<div class="session-counter ui-action" data-toggle="tooltip" data-placement="left" title="" data-original-title="Next Number">
                            <asp:Label ID="number" runat="server" Text="Label"></asp:Label></div>
								</div>

		<div class="ui-component-options">
			<ul>
				<li>
					<a href="https://www.doc.lk/book/ECL-D1142-H03-1508410800-2#" class="ui-action" data-toggle="tooltip" data-placement="right" title="" data-original-title="Next Appointment Time">
                        <asp:Label ID="time1" runat="server" Text="Label"></asp:Label></a>
				</li>
				<li class="session-status">Available</li>
			</ul>
		</div>
				<div class="ui-component-content pending-time timer-div" style="">
			<ul class="">
				
			</ul>
		</div>
			</div>
</li>

		</ul>
	</div>

	<div class="ui-profile-content">
		<form runat="server" accept-charset="UTF-8" class="form-horizontal" role="form">
            <input name="_token" type="hidden" value="pvg18DpxTNvIzl67FrzgJ8C9JF0VbEjDcqhQlnqe">
				<div class="form-group ">
			<label for="name" class="col-lg-2 control-label">Name</label>
			<div class="col-lg-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user text-danger"></i></span>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Mr</asp:ListItem>
                         <asp:ListItem>Mrs</asp:ListItem>
                         <asp:ListItem>Mast</asp:ListItem>
                         <asp:ListItem>Miss</asp:ListItem>
                         <asp:ListItem>Dr</asp:ListItem>
                         <asp:ListItem>Dr(Mrs)</asp:ListItem>
                         <asp:ListItem>prof</asp:ListItem>
                    </asp:DropDownList>
				
					<span class="input-group-addon"></span>
                    <asp:TextBox ID="name" class="form-control" placeholder="Name - Required" runat="server"></asp:TextBox>
					
				</div>
				
			</div>
		</div>

		<div class="form-group ">
			<label for="phone" class="col-lg-2 control-label">Phone</label>
			<div class="col-lg-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-phone text-danger"></i></span>
                    <asp:TextBox ID="phone" class="form-control" placeholder="Phone - Required" runat="server"></asp:TextBox>
				</div>
				
			</div>
		</div>

		<div class="form-group">
			<label for="local" class="col-lg-2 control-label">Nationality</label>
			<div class="col-lg-8" id="isLocal">
				<div class="radio">
					<label>
                        <asp:RadioButton ID="radLocal" runat="server" GroupName="nat" /> Local
					</label>
				</div>
				<div class="radio">
					<label>
                        <asp:RadioButton ID="radForign" runat="server" GroupName="nat" />
						Foreign
					</label>
				</div>
			</div>
		</div><br>

		<div id="foreign_country" class="form-group " style="display:none">
			<label for="country" class="col-lg-2 control-label">Country</label>
			<div class="col-lg-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-globe fa-fw"></i></span>
                    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox><select id="book-country" class="form-control" name="country"><option value="1" selected="selected">Sri Lanka</option><option value="2">Maldives</option><option value="200">Other</option></select>
				</div>
				
			</div>
		</div>
		
		<div class="form-group ">
			<label for="nic" class="col-lg-2 control-label">NIC</label>
			<div class="col-lg-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-certificate text-warning"></i></span>
                    <asp:TextBox ID="nic" class="form-control" placeholder="NIC  - Required" runat="server"></asp:TextBox>
				</div>
				
			</div>
		</div>

		<div class="form-group ">
			<label for="passport" class="col-lg-2 control-label">Passport</label>
			<div class="col-lg-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-book text-warning"></i></span>
                    <asp:TextBox ID="passport" class="form-control" placeholder="Passport - Required if no NIC" runat="server"></asp:TextBox>
				</div>
				
			</div>
		</div>

		<div class="form-group ">
			<label for="email" class="col-lg-2 control-label">E-mail</label>
			<div class="col-lg-8">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                    <asp:TextBox ID="email" class="form-control" placeholder="E-Mail - Optional" runat="server"></asp:TextBox> 
				</div>
				
			</div>
		</div>
		<div class="form-group">
			<label for="email" class="col-lg-2 control-label"></label>
			<div class="col-lg-8">
				<div class="input-group" style="border-bottom: 0px;">
					<small><span style="color: red">*</span>Please enter email address if you require to send PDF receipt to your email account.</small>
				</div>
			</div>
		</div>
		<input name="timer_value" type="hidden" value="1508323478|4033">
		
				<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="Button1" runat="server" class="btn btn-dialog" Text="continue" OnClick="Button1_Click" />
			</div>
		</div>
		
		</form>
	</div>

</section>


		

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-6">
						<h4>Services</h4>
						<ul>
							<li><a href="https://www.doc.lk/">Channel Your Doctor</a></li>
							<!--<li><a href="#/">Family Doctor</a></li>-->
							<li><a href="https://www.doc.lk/healthnet">Medicine to Your Doorstep</a></li>
							<li><a href="https://www.doc.lk/certis">Healthcare to Your Doorstep</a></li>
							<li><a href="http://healthvault.doc.lk/Dashboard">My Health Records</a></li>
							<li><a href="https://www.doc.lk/lab-reports">Lab Reports at Your Fingertips</a></li>
						</ul>
					</div>
					
					<div class="col-md-4 col-sm-4 col-xs-6">
						<h4>Health Pack</h4>
						<ul>
							<li><a href="https://www.facebook.com/doc990lk" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i>Facebook</a></li>
							<li><a href="https://twitter.com/doc_990" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i>Twitter</a></li>
							<li><a href="https://plus.google.com/103343822992561747610/posts" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i>Google Plus</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</footer>

		<!-- models -->
		<div id="container-tooltip"></div>
		<div id="container-modal">
			<div class="modal fade" id="searchAlertModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times-circle-o fa-fw"></i></span></button><br>
			</div>
			<div class="modal-body"></div>
		</div>
	</div>
</div>




		
 </form></body></html>
