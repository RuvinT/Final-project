﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="test_Expression_web.Appointment" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Appointment</title>


	<link rel="stylesheet" href="css/form-login.css">

    <style type="text/css">
        .auto-style3 {
            margin-left: 0px;
            margin-top: 31px;
        }
    </style>

</head>


	
<body>

    <div class="main-content">

        <!-- You only need this form and the form-login.css -->

       <form id="form2" runat="server"  class="form-login" >

            <div class="form-log-in-with-email">

               
                <a href="FrontPage.aspx" class="form-create-an-account">Back to main Page &rarr;</a>

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Hospital Administrator</h1></br>
                        <h1>&nbsp;Doctors sedule editor</h1>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthPackConnectionString %>" SelectCommand="SELECT * FROM [DocSedule]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" Width="372px" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" SortExpression="DoctorID" />
                                <asp:BoundField DataField="Specification" HeaderText="Specification" SortExpression="Specification" />
                                <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                <asp:BoundField DataField="Hospital" HeaderText="Hospital" SortExpression="Hospital" />
                                <asp:BoundField DataField="MaxPacients" HeaderText="MaxPacients" SortExpression="MaxPacients" />
                                <asp:BoundField DataField="PacientNumber" HeaderText="PacientNumber" SortExpression="PacientNumber" />
                                <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber" />
                                <asp:BoundField DataField="TP" HeaderText="TP" SortExpression="TP" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </div>

                    <div class="form-row">
                    </div>
                     <div class="form-row">
                    </div>

                </div>

               
            </div>

            

        </form>

    </div>

</body>
