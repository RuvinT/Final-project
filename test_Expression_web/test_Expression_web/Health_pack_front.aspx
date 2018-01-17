<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Health_pack_front.aspx.cs" Inherits="test_Expression_web.Health_pack_front" %>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>Health Pack</title>
    <script src="jquery-3.2.1.js"></script>
    <link href="jquery-ui.min.css" rel="stylesheet" />
    <link href="jquery-ui.css" rel="stylesheet" />
    <script src="jquery-ui.min.js"></script>
    <script src="jquery-ui.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#TextName').autocomplete({

                source: 'ConsultantHandler.ashx'
            });
        });





        $(document).ready(function () {
            $('#Date').datepicker();
        });

    </script>




    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/ubuntu.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/font-awesome.min.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/bootstrap.min.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/default.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/default.date.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/default.time.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/style.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/bootstrap-chosen.css">

    <!--		NEW UI-->
    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/style-new.css">

    <link media="all" type="text/css" rel="stylesheet" href="./FrontData_files/web-index.css">

    <style>
        h1 {
            color: red;
        }

        .add-padding--top {
            margin-top: -95px;
        }

        @media (max-width: 473px) {
            .add-padding--top {
                margin-top: -122px;
            }
        }

        .auto-style4 {
            position: relative;
            display: table;
            border-collapse: separate;
            width: 101%;
            left: 0px;
            top: 0px;
            height: 50px;
            border-bottom: 1px solid #ed2227;
            margin-bottom: 10px;
        }
    </style>

</head>
<body>


    <!-- End Google Analytics -->

    <!-- Start - Page Content -->
    <header class="main">
        <div class="container header__container">
            <div class="row header__row">
                <div class="col-md-2 col-sm-4 mobile-col-auto left-col">
                    <h1>HEALTH PACK
                    </h1>
                </div>
                <div class="col-md-10 col-sm-8 mobile-col-auto right-col">
                    <div class="header__links">
                        <div class="buttons">

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
    </div>
    <section class="hero hero-bg add-padding--top">
        <div class="make-appointment">
            <h2 class="index-title">Channel Your Doctor</h2>
            <div class="container-appointment">
                <form runat="server">
                    <span class="twitter-typeahead" style="position: relative; display: block">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user-md"></i></span>

                            <asp:TextBox ID="TextName" runat="server" class="form-control" placeholder="Doctor - Max 20 Characters" MaxLength="20"></asp:TextBox>
                            <a id="doctor-popover" href="   " class="input-group-addon ui-action-popover" data-container="body" data-toggle="popover" data-trigger="focus" data-placement="left" data-title="Example &lt;a  class=&#39;pull-right&#39; id=&#39;doctor-popover-close&#39; href=&#39;#/&#39;&gt;&lt;span&gt;&lt;i class=&#39;fa fa-close&#39;&gt;&lt;/i&gt;&lt;/span&gt;&lt;/a&gt;" data-content="&lt;small&gt;Type &lt;strong&gt;Karuna&lt;/strong&gt; &lt;br&gt;Search results will contain sessions &lt;br&gt; for the following doctors: &lt;br&gt;Dr &lt;strong&gt;KARUNA&lt;/strong&gt;SENA JAYALATH &lt;br&gt;Dr A.B. &lt;strong&gt;KARUNA&lt;/strong&gt;RATNE &lt;br&gt;Dr D.M. RAJA&lt;strong&gt;KARUNA&lt;/strong&gt;&lt;/small&gt;" tabindex="-1" data-original-title="" title=""><i class="fa fa-question-circle"></i></a>
                        </div>

                    </span>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-h-square"></i></span>



                        <asp:DropDownList ID="Hospital" runat="server" CssClass="col-xs-offset-0" Height="30px" Width="320px">
                            <asp:ListItem>Any Hospital</asp:ListItem>
                            <asp:ListItem>Nawaloka Hospital-Colombo</asp:ListItem>
                            <asp:ListItem>NAWINNA MEDICARE HOSPITAL - MAHARAGAMA</asp:ListItem>
                            <asp:ListItem>Nawinne Hospital - Kurunagala</asp:ListItem>
                            <asp:ListItem>New MediHelp Hospital - Horana</asp:ListItem>
                            <asp:ListItem>Arogya Hospital</asp:ListItem>
                            <asp:ListItem>Balasooriya Hospital Puttalam</asp:ListItem>
                            <asp:ListItem>Blue Cross Medical Centre (Pvt) Ltd</asp:ListItem>
                            <asp:ListItem> CDEM Hospital</asp:ListItem>
                            <asp:ListItem>Ceylinco Healthcare </asp:ListItem>
                            <asp:ListItem>Ceymed Healthcare Services (Pvt) Ltd</asp:ListItem>
                            <asp:ListItem> Ceymed Hospital Services (Pvt) Ltd,Trincomalee</asp:ListItem>
                            <asp:ListItem>Child Eye - Rajagiriya</asp:ListItem>
                            <asp:ListItem>Christell Skin Clinic</asp:ListItem>
                            <asp:ListItem>Dr. Neville Fernando Teaching Hospital - Malabe</asp:ListItem>
                            <asp:ListItem>Durdans Hospital</asp:ListItem>
                            <asp:ListItem>Durdans Hospital - Heart Centre</asp:ListItem>
                            <asp:ListItem>Golden Key Hospitals Ltd</asp:ListItem>
                            <asp:ListItem>Healthy Life Clinic</asp:ListItem>
                            <asp:ListItem>Joseph Frazer Memorial Hospital</asp:ListItem>
                        </asp:DropDownList>



                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-plus-square"></i></span>


                        <asp:DropDownList ID="Speciality" runat="server" Height="30px" Width="320px">
                            <asp:ListItem>Any Speciality</asp:ListItem>
                            <asp:ListItem> Acupuncture</asp:ListItem>
                            <asp:ListItem>Allergy And Immunology</asp:ListItem>
                            <asp:ListItem>Allergy Specialist</asp:ListItem>
                            <asp:ListItem>Anaesthetist and Intensivist</asp:ListItem>
                            <asp:ListItem>Andrology And Male Fertility</asp:ListItem>
                            <asp:ListItem>Applied Psychologist</asp:ListItem>
                            <asp:ListItem>Audiologist</asp:ListItem>
                            <asp:ListItem>Ayurvedic And Alternative Medicine</asp:ListItem>
                            <asp:ListItem>Back Pain Treatment</asp:ListItem>
                            <asp:ListItem>Bacteriologist</asp:ListItem>
                            <asp:ListItem>Behaviour Therapist</asp:ListItem>
                            <asp:ListItem>Breast Feeding</asp:ListItem>
                            <asp:ListItem>Cardiac Electrophysiologist</asp:ListItem>
                            <asp:ListItem>Cardiologist</asp:ListItem>
                            <asp:ListItem>Cardiologist And Cardiac Electrophysiologist</asp:ListItem>
                            <asp:ListItem>Cardiologist Echo</asp:ListItem>
                            <asp:ListItem>Cardiothoracic Surgeon</asp:ListItem>
                            <asp:ListItem>Chemical Pathology</asp:ListItem>
                            <asp:ListItem>Chest Physician</asp:ListItem>
                            <asp:ListItem>Chest SpecialistChild and Adolescent Psychiatric</asp:ListItem>
                            <asp:ListItem>Child Psychiatrist</asp:ListItem>
                            <asp:ListItem>Child Psychologist</asp:ListItem>



                        </asp:DropDownList>

                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                        <asp:TextBox ID="Date" runat="server" Height="30px" Width="320px" placeholder="Any Date"></asp:TextBox>

                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Search" class="button-primary button-primary--red btn btn-block btn-main-search" OnClick="Button1_Click" />

                </form>
            </div>
        </div>
    </section>

    <section class="main-links">
        <div class="container main-links__container">
            <div class="row">
              
                <div class="col-md- main-link__col" id="first-link"></div>
                <div class="col-md-3 main-link__col">
                    <a href="https://www.doc.lk/healthnet" class="main-link__content">
                        <div class="main-link__icon">
                            <img src="./FrontData_files/pills.png">
                        </div>
                        <div class="main-link__text">
                            <h3 class="main-link__title">Medicine</h3>
                            <span class="main-link__sub-title">to Your Doorstep</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 main-link__col">
                    <a href="https://www.doc.lk/certis" class="main-link__content">
                        <div class="main-link__icon">
                            <img src="./FrontData_files/ambulance.png">
                        </div>
                        <div class="main-link__text">
                            <h3 class="main-link__title">Healthcare</h3>
                            <span class="main-link__sub-title">to Your Doorstep</span>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 main-link__col">
                    <a href="http://healthvault.doc.lk/Dashboard" class="main-link__content">
                        <div class="main-link__icon">
                            <img src="./FrontData_files/heartbeat.png">
                        </div>
                        <div class="main-link__text">
                            <h3 class="main-link__title">My Health</h3>
                            <span class="main-link__sub-title">Records</span>
                        </div>
                    </a>
                </div>
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
                        <li>Medicine to Your Doorstep</li>
                        <li>Healthcare to Your Doorstep</li>
                        <li>My Health</li>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-6">
                    <h4>Health Pack</h4>
                    <ul>
                        <li><a href="https://www.doc.lk/hospitals">Partners</a></li>
                        <li><a href="https://www.doc.lk/about">About Us</a></li>

                        <li><a href="https://www.doc.lk/contact">Contact Us</a></li>

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
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times-circle-o fa-fw"></i></span></button>
                        <br>
                    </div>
                    <div class="modal-body"></div>
                </div>
            </div>
        </div>

        <!-- advert-model -->
        <div class="modal fade" id="advertModel" tabindex="-1" role="dialog" aria-labelledby="advertModelLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times fa-fw"></i></button>
                        <h4 class="modal-title" id="advertModelLabel">
                            <i class="fa fa-stethoscope fa-fw"></i>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <section class="advert-promotions ui-print-hide">
                        </section>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
