<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital_select.aspx.cs" Inherits="test_Expression_web.Hospital_select" %>




<!DOCTYPE html>
<!-- saved from url=(0081)https://www.doc.lk/search?doctor=AJITH+DE+SILVA&hospital=0&specialization=0&date= -->
<html lang="en" class="velocity " xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
		
		
		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/ubuntu.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/font-awesome.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/bootstrap.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/default.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/default.date.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/default.time.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/style.css">

		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/bootstrap-chosen.css">

		<!--		NEW UI-->
		<link media="all" type="text/css" rel="stylesheet" href="./hospital_files/style-new.css">

			
	</head>
	<body>
   <form id="form1" runat="server">


		
		<header class="main" style="left: 0; top: 0">
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
								<!--<a href="#/" class="my-bookings-button link-my-bookings--pc">My Bookings</a>-->
								<a href="login.aspx" class="button-primary button-primary-outline">Login</a>
								<a href="Register.aspx" class="button-primary">Sign Up</a>								
							</div>
													</div>
					</div>
				</div>
							</div>
		</header>
		
		<div class="add-padding--top"></div>	
		
		<div id="system-messages">

		
	
		
		
	
	
	
	
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                  <h3 class="ui-component-title"><%#Eval("Hospital") %></h3>
		<ul class="ui-component-list">
						<li>
				<div class="ui-component ui-component-primary ui-component-doctors">
					<div class="ui-component-content" data-link="//www.doc.lk/channel/592?doctor=AJITH+DE+SILVA&amp;hospital=0&amp;specialization=0&amp;date=">
						<div class="doctor-photo"><img src="./hospital_files/doctor-default.gif"></div>
						<div class="doctor-quick-details">
							<ul>
								<li class="doctor-name"><%#Eval("DoctorName") %></li>

																<li class="doctor-title">
									Surgeon
								</li>
								
							</ul>
						</div>
					</div>

					<div class="ui-component-options">
						<ul>
							<li>
                               <asp:hyperlink
                              runat="server"
id="hlDividents"
navigateurl='<%# String.Format("SearchDetails.aspx?Hos={0}&Doc={1}&Spe={2}", Eval("Hospital"), Eval("DoctorName"), Eval("Specification")) %>'
text='Channel'>
</asp:hyperlink>
							
							</li>
						</ul>
					</div>
				</div>
			</li>
					</ul>
               </ItemTemplate>
            </asp:Repeater>
		
	
	
	
	
</div>	
       
       <section class="container-search-results">

	<div class="ui-header">

		

		<div class="ui-header-note">
			<h2>Find your Doctor. <br> Make an Appointment. <br> Pay easy.</h2>
		</div>

		

			

		
		</div>
				
		
		
	      
          
												
				
		
		
	<div class="ui-profile-content">
		<p style="text-align:justify">
			Get an appointment for your doctor on your mobile phone through health pack Service.
		
		</p>
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

