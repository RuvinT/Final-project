<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookP2.aspx.cs" Inherits="test_Expression_web.BookP2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

		
		<head runat="server">
		<title>View</title>

		<!-- /title -->

		<!-- styles -->
		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/ubuntu.css">

		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/font-awesome.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/bootstrap.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/default.css">

		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/default.date.css">

		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/default.time.css">

		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/style.css">

		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/bootstrap-chosen.css">

		<!--		NEW UI-->
		<link media="all" type="text/css" rel="stylesheet" href="./book2_files/style-new.css">

				<!-- /styles -->

		<!--[if lt IE 9]>
		  <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="//oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->

	</head>
	<body>
<form id="form1" runat="server">
		
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

	
		
	
		
		
	
	
	
	
</div>		<section class="container-sessions">
	<h3 class="ui-component-note">
        <asp:Label ID="Hospital" runat="server" Text="Label"></asp:Label></h3>
	<div class="ui-profile">
		<div class="doctor-profile">
			<div class="doctor-photo"><img src="./book2_files/doctor-default.gif"></div>
			<div class="doctor-quick-details">
				<ul>
					<li class="doctor-name"><a href="https://www.doc.lk/appointment#/">
                        <asp:Label ID="doctor" runat="server" Text="Label"></asp:Label></a> <span class="doctor-qualifications"></span></li>

										<li class="doctor-title">
						Surgeon
					</li>
										<li>Special Notes: <span class="text-danger">Phone Bookings Accepted Please Call.... 0115777888</span></li>
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
						<div class="session-counter ui-action" data-toggle="tooltip" data-placement="left" title="" data-original-title="Your Number">
                            <asp:Label ID="count" runat="server" Text="Label"></asp:Label></div>
								</div>

		<div class="ui-component-options">
			<ul>
				<li>
					<a href="https://www.doc.lk/appointment#" class="ui-action" data-toggle="tooltip" data-placement="right" title="" data-original-title="Your Appointment Time">4:35 PM</a>
				</li>
				<li class="session-status">Available</li>
			</ul>
		
			</div>
</li>

		</ul>
	</div>

	<div class="ui-profile-content">
		<dl class="dl-horizontal">

						<dt>Reference No</dt>
			<dd>16028748</dd>
			
						<dt>Patient's Name</dt>
			<dd>
                <asp:Label ID="mr" runat="server" Text="Label"></asp:Label>. <asp:Label ID="name" runat="server" Text="Label"></asp:Label> <small>(<asp:Label ID="nat" runat="server" Text="Label"></asp:Label>)</small></dd>
			
						<dt>Phone Number</dt>
			<dd>
                <asp:Label ID="phone" runat="server" Text="Label"></asp:Label></dd>
			
						<dt>NIC</dt>
			<dd>
                <asp:Label ID="nic" runat="server" Text="Label"></asp:Label></dd>
			
			
			
			<dt>Hospital</dt>
			<dd>
                <asp:Label ID="hos" runat="server" Text="Label"></asp:Label></dd>

						<dt>Room</dt>
			<dd>27</dd>
			
			<dt>Appointment Time</dt>
			<dd>
                <asp:Label ID="time1" runat="server" Text="Label"></asp:Label> <small>(Time may vary according to doctor's arrival time)</small></dd>

						<dt>Source</dt>
			
			
									<dt>Hospital Charges</dt>
			<dd><span id="charge-type-9192578">500.00</span> LKR <small><span style="color: #01ab19;" id="charge-text-9192578"></span></small></dd>
															<dt>Doctor Charges</dt>
			<dd><span id="charge-type-9192579">1500.00</span> LKR <small><span style="color: #01ab19;" id="charge-text-9192579"></span></small></dd>
									<dt>Doctor Charges VAT</dt>
			<dd>225.00 LKR <small>(VAT 15%)</small></dd>
																		<dt>Booking Charges</dt>
			<dd><span id="charge-type-9192580">275.00</span> LKR <small><span style="color: #01ab19;" id="charge-text-9192580"></span></small></dd>
									
			<dt>Total Charges</dt>
			<dd>
				<strong><span id="total-charge">2500.00</span> LKR</strong> <small>(Including Tax) <span style="color: #01ab19;" id="total-charge-text"></span></small>
			</dd>
																	
                                                                        </dl>
	</div>
<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;"><i class="fa fa-angle-right fa-3x"></i></button>
                                                                        
					
			
		
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

