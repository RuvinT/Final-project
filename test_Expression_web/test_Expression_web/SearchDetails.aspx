<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDetails.aspx.cs" Inherits="test_Expression_web.SearchDetails" %>




   

<!DOCTYPE html>
<!-- saved from url=(0086)https://www.doc.lk/channel/592?doctor=AJITH+DE+SILVA&hospital=0&specialization=0&date= -->
<html lang="en" class="velocity " xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        
       
		
		<title>Channel Doctor</title>

		<!-- styles -->
		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/ubuntu.css">

		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/font-awesome.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/bootstrap.min.css">

		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/default.css">

		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/default.date.css">

		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/default.time.css">

		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/style.css">

		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/bootstrap-chosen.css">

		<!--		NEW UI-->
		<link media="all" type="text/css" rel="stylesheet" href="./DocTimeData_files/style-new.css">

				

		

	    <style type="text/css">
            .auto-style1 {
                height: auto;
                width: auto;
                visibility: visible;
                z-index: 99992;
            }
        </style>

				

		

	</head>
	<body>
        <form id="form2" runat="server">

	
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
								<!--<a href="#/" class="my-bookings-button link-my-bookings--pc">My Bookings</a>-->
								<a href="login.apx" class="button-primary button-primary-outline">Login</a>
								<a href="Register.aspx" class="button-primary">Sign Up</a>								
							</div>
													</div>
					</div>
				</div>
							</div>
		</header>
		
		<div class="add-padding--top"></div>	
		
		<div id="system-messages">

		
	
		
		
	
	
	
	
</div>		
<section class="container-doctors">
	<h3 class="ui-component-note">
        <asp:Label ID="HosName" runat="server" Text="Label"></asp:Label></h3>

	<div class="ui-profile">
		<div class="doctor-profile">
			<div class="doctor-photo"><img src="./DocTimeData_files/doctor-4.jpg"></div>
			<div class="doctor-quick-details">
				<ul>
					<li class="doctor-name"><a href=""
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></a> <span class="doctor-qualifications"></span></li>
										<li class="doctor-title">
						Surgeon
					</li>
										<li>Speciality: <span class="text-danger">
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            
                                            
</span></li>
				</ul>
			</div>
		</div>
	</div>
   
	<h3 class="ui-component-subtitle"><i class="fa fa-clock-o"></i>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
    
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel">
			<div class="panel-heading" role="tab" id="heading-24">
				<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="https://www.doc.lk/channel/592?doctor=AJITH+DE+SILVA&amp;hospital=0&amp;specialization=0&amp;date=#collapse-24" aria-expanded="false" aria-controls="collapse-24">
					<h4 class="panel-title">
						<i class="fa fa-stethoscope fa-fw"></i> Surgeon <span class="pull-right"><i class="fa fa-chevron-down fa-fw"></i></span><br><small> Sessions</small>
					</h4>
				</a>
			</div>
               <asp:Repeater ID="Repeater1" runat="server">
     <ItemTemplate>

			<div id="collapse-24" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading-24">
				<div class="ui-profile-sessions ui-profile-sessions-list">
					<ul>
												<li>
														
							<div class="ui-component ui-component-primary ui-component-sessions">

								<div class="ui-component-content" data-link="//www.doc.lk/book/674582">
									<div class="session-quick-details">
										<ul>
											<li class="session-date"><%#Eval("Date") %></li>
											<li class="session-time"><%#Eval("Time") %></li>

										</ul>
									</div>
									<div class="session-counter ui-action" data-toggle="tooltip" data-placement="left" title="" data-original-title="Next Number"><%#Eval("CountOf") %></div>
																	</div>

								<div class="ui-component-options">
									<ul>
										<li>
											
                                             <asp:hyperlink
                              runat="server"
id="hlDividents"
navigateurl='<%# String.Format("BookP1.aspx?Hos={0}&Doc={1}&Date={2}&Time={3},&cou={4},&spe={5}", Eval("Hospital"), Eval("DoctorName"),Eval("Date"),Eval("Time"),Eval("CountOf"),Eval("Specification")) %>'
text='Channel'>
</asp:hyperlink>
										</li>
										<li class="session-status">Available</li>
									</ul>
								</div>
							</div>

																				</li>
											
											<li>
														
							
									
					</ul>				
				</div>
			</div>

         </ItemTemplate>
</asp:Repeater>
		</div>
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
							<li><a href="http://healthvault.doc.lk/Dashboard">My Health</a></li>
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


		</div>
		<!-- /models -->

		<!-- ENV: cloud - RC 2.1.1 - Time: 0.3258 - Memory: 15.75 MB - Queries: 26 -->
		<!-- debug -->
				<!-- /debug -->

		<!-- script -->
		
		
        </form></body></html>