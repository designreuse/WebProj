<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${logedUser.firstName}'spage</title>
<link href="../springmvc/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../springmvc/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<link href="../springmvc/resources/css/animate.css" rel="stylesheet">
<link href="../springmvc/resources/css/style.css" rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="../springmvc/resources/gridster/assets/css/jquery.gridster.css">
<link rel="stylesheet" type="text/css"
	href="../springmvc/resources/gridster/assets/css/styles.css">

<script src="../springmvc/resources/js/jquery-2.1.1.js"></script>

<link rel='stylesheet'
	href='../springmvc/resources/fullcalendar/fullcalendar.css' />
<link href='../springmvc/resources/fullcalendar/fullcalendar.print.css'
	rel='stylesheet' media='print' />
<link rel="stylesheet" type="text/css"
	href="../springmvc/resources/css/dropzone.css">

<script
	src='../springmvc/resources/timePicker/bootstrap-datetimepicker.min.js'></script>


<script src='../springmvc/resources/fullcalendar/lib/moment.min.js'></script>
<script src='../springmvc/resources/fullcalendar/fullcalendar.js'></script>

<script src="../springmvc/resources/chart/amcharts.js"
	type="text/javascript"></script>
<script src="../springmvc/resources/chart/serial.js"
	type="text/javascript"></script>
<link
	href="../springmvc/resources/css/plugins/footable/footable.core.css"
	rel="stylesheet">
<link href="../springmvc/resources/css/animate.css" rel="stylesheet">
<!-- FooTable -->
<link
	href="../springmvc/resources/css/plugins/footable/footable.core.css"
	rel="stylesheet">

<style type="text/css">
.panel {
	display: none;
}

.panel.active {
	display: block;
}

.panel1 {
	display: none;
}

.panel1.active1 {
	display: block;
}

.star {
	font-size: 24px;
}

#calendar {
	width: 720px;
	display: block;
	z-index: 100000;
	visibility: visible;
}

#menuChoose li {
	display: inline;
	padding: 15px;
	margin-left: 5px;
}

.promeniMeni:hover {
	cursor: pointer;
}

.sto {
	border-radius: 50%;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	text-align: left;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: #4CAF50;
	color: white;
}
</style>

</head>

<body ng-app="qfcApp" ng-controller="MyCtrl">




	<!-- Update user modal-->
	<div id="updateUserModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="width: 400px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Update info</h4>
				</div>
				<form action="updateUser/${logedUser.id}" method="POST">
					<input class="form-control" name="email" type="text" id="regEmail"
						placeholder="Email"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;"
						value="${logedUser.email}"> <input class="form-control"
						type="text" id="firstName" placeholder="First name"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
						name="firstName" ; value="${logedUser.firstName}" /> <input
						class="form-control" name="lastName" type="text" id="lastName"
						placeholder="Last name"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
						value="${logedUser.lastName}" /> <input class="form-control"
						type="text" id="regPassword" name="password"
						placeholder="Password"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
						value="${logedUser.password}" />

					<div class="modal-footer" style="margin-top: 15px;">
						<button type="submit" class="btn btn-success"
							style="background: #1ab394">Update</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- End update user -->
	<!-- Update staff modal-->
	<div id="updateUserModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="width: 400px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Update info</h4>
				</div>
				<form action="updateStaff/${logedUser.id}" method="POST">
					<input class="form-control" name="email" type="text" id="regEmail"
						placeholder="Email"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;"
						value="${logedUser.email}"> <input class="form-control"
						type="text" id="firstName" placeholder="First name"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
						name="firstName" ; value="${logedUser.firstName}" /> <input
						class="form-control" name="lastName" type="text" id="lastName"
						placeholder="Last name"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
						value="${logedUser.lastName}" /> <input class="form-control"
						type="text" id="regPassword" name="password"
						placeholder="Password"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
						value="${logedUser.password}" />

					<div class="modal-footer" style="margin-top: 15px;">
						<button type="submit" class="btn btn-success"
							style="background: #1ab394">Update</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- End update staff -->
	<!-- Add restaurant modal-->
	<div id="registerRestaurantModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="width: 400px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add restaurant</h4>
				</div>
				<form ng-submit="submitAddRes()" method="POST"
					ng-controller="addResController" novalidate>
					<input class="form-control" name="name" type="text"
						ng-model="resName" placeholder="Name"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;">

					<input class="form-control" type="text" ng-model="resAddress"
						placeholder="Address"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
						name="firstName" /> <input class="form-control" name="city"
						type="text" ng-model="resCity" placeholder="City"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
					<input class="form-control" type="text" ng-model="resPhone"
						name="Phone" placeholder="Phone"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
					<input class="form-control" type="text" ng-model="resEmail"
						name="Email" placeholder="Email"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
					<input class="form-control" type="text" ng-model="resSite"
						name="site" placeholder="Site"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
					<input class="form-control" type="text" ng-model="resPib"
						name="PIB" placeholder="PIB"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
					<input class="form-control" type="text" ng-model="resAcc"
						name="acc" placeholder="Acc"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
					<input class="form-control" type="text" ng-model="resPicture"
						name="picture" placeholder="Picture"
						style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
					<div class="modal-footer" style="margin-top: 15px;">
						<button type="submit" class="btn btn-success"
							style="background: #1ab394">Add</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- End restaurant staff -->

	<div id="wrapper">
		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav metismenu" id="side-menu">
				<li class="nav-header">
					<div class="dropdown profile-element">
						<span> <img alt="image" class="img-circle"
							src="../springmvc/resources/img/profile_small.jpg" />
						</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
							class="clear"> <span class="block m-t-xs"> <strong
									class="font-bold">${logedUser.firstName }
										${logedUser.lastName}</strong>
							</span> <span class="text-muted text-xs block">${ logedUser.role.roleName}</span>
						</span>
						</a>
					</div>
					<div class="logo-element">QFC</div>
				</li>
				<!-- Admin side menu -->

				<!-- <li><a data-toggle="modal"
							data-target="#registerRestaurantModal"><i class="fa fa-plus"></i>
								<span class="nav-label">Add restaurant</span></a></li> -->


			</ul>

		</div>
		</nav>

		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top white-bg" role="navigation"
					style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>
					<c:choose>
						<c:when test="${logedUser.role.roleName == 'Admin'}">
							<form role="search" class="navbar-form-custom"
								action="search_results.html">
								<div class="form-group">
									<input type="text" placeholder="Search for something..."
										class="form-control" name="top-search" id="top-search">
								</div>
							</form>
						</c:when>
					</c:choose>

				</div>
				<ul class="nav navbar-top-links navbar-right">
					<li><a href="logout"> <i class="fa fa-sign-out"></i> Log
							out
					</a></li>
				</ul>

				</nav>
			</div>
			<!-- Regular user central part -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-content ibox-heading"
								style="background-color: #fff;height:120px">
								<h3 style="margin-top: 22px;">
									<i class="fa fa-glass"></i> Restaurant list
								</h3>
								<div class="container" style="float:left;width:100%">
										<input class="form-control" type="search" ng-model="q.name"
											placeholder="filter by name..." aria-label="filter friends"
											style="margin-bottom: 20px;width:30%;float:left;margin-left:-15px" />
										<input class="form-control" type="search" ng-model="qd.address"
											placeholder="filter by address..." aria-label="filter friends"
											style="margin-bottom: 20px;width:30%;float:left;margin-left:15px" />
										<input class="form-control" type="search" ng-model="qc.city"
											placeholder="filter by city..." aria-label="filter friends"
											style="margin-bottom: 20px;width:30%;float:left;margin-left:15px" />
										</div>
							</div>
							
							<div class="ibox-content">
								
								<div class="feed-activity-list">
									<div>
										
										<ul class="example-animate-container">

											<li class="animate-repeat"
												ng-repeat="friend in friends | filter:q | filter:qd | filter:qc" nop
												friendss="friends" idx="friend.id" fs="friend">
												<div class="feed-element">
													<div
														style="background: #f8f8f9; float: left; height: 100px; width: 100px; margin-right: 10px">
														<p style="text-align: center; margin-top: 40px">[image]</p>
													</div>
													<div>
														<small class="pull-right">1m ago</small> <strong >{{friend.name}}</strong>
														<div>Lorem Ipsum is simply dummy text of the
															printing and typesetting industry. Lorem Ipsum</div>
														<small class="text-muted"></small>
														<div id="deletea">
														
														</div>
														
													</div>
													<div class="animate-repeat" ng-repeat="event in friend.events " eveDir>
															<div id="eve{{event.id}}">{{event.description}}</div>
													</div>
											
													<!--MODAL WINDOW-->
													<script type="text/ng-template" id="myModalContent.html">
                    				<div class="modal-header">
                        				<h3>Restaurant: {{ customer.name }}</h3>
                    				</div>
									<form ng-submit="submitUpdateRes()" method="POST" ng-controller="updateResController" novalidate>
                    					<div class="modal-body">
                            			
										<input class="form-control" name="name" type="text" ng-model="resNameU"
										placeholder="Name"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;"> 
						
									<input class="form-control"
									type="text" ng-model="resAddressU" placeholder="Address"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
									name="firstName" /> 
									<input
									class="form-control" name="city" type="text" ng-model="resCityU"
									placeholder="City"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" /> 
									<input class="form-control"
									type="text" ng-model="resPhoneU" name="Phone"
									placeholder="Phone"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
									<input class="form-control"
									type="text" ng-model="resEmailU" name="Email"
									placeholder="Email"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
									<input class="form-control"
									type="text" ng-model="resSiteU" name="site"
									placeholder="Site"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
									<input class="form-control"
									type="text" ng-model="resPibU" name="PIB"
									placeholder="PIB"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" disabled/>
									<input class="form-control"
									type="text" ng-model="resAccU" name="acc"
									placeholder="Acc"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" disabled/>
									<input class="form-control"
									type="text" ng-model="resPictureU" name="picture"
									placeholder="Picture"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
									<input type="hidden" ng-model="resId"/>
				
                          
                    				</div>
                    				<div class="modal-footer" style="margin-top: 15px;">
										<button type="submit" class="btn btn-success"
										style="background: #1ab394">Update</button>
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</form>
                				</script>
                				<!--MODAL WINDOW-->
													<script type="text/ng-template" id="addEventContent.html">
                    				<div class="modal-header">
                        				<h3>Restaurant: {{ customer.name }}</h3>
                    				</div>
									<form ng-submit="submitAddEvent()" method="POST" ng-controller="addEventController" novalidate>
                    					<div class="modal-body">
                            			
										<input class="form-control" name="name" type="text" ng-model="eventDescription"
										placeholder="Description"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;"> 
						
									<input class="form-control"
									type="date" ng-model="eventDate" placeholder="Date"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
									name="eventName" /> 
									<input
									 name="eventPicture" type="file" ng-model="eventPicture"
									placeholder="Picture"
									style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" /> 
								
									

									<input type="hidden" ng-model="restaurantObj" />
									<input type="hidden" ng-model="restaurantId" />
                    				</div>
                    				<div class="modal-footer" style="margin-top: 15px;">
										<button type="submit" class="btn btn-success"
										style="background: #1ab394">Add</button>
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
								</form>
		
                				</script>
                				
	
                                	
												</div>


											</li>
											<!-- <li class="animate-repeat" ng-if="results.length === 0">
												<strong>No results found...</strong>
											</li> -->
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>


				<div class="footer">
					<div>
						<strong>Copyright</strong> Quest For Chef &copy; 2016
					</div>
				</div>
			</div>



			<!-- Waiter central part -->
			<c:choose>
				<c:when test="${logedUser.role.roleName == 'Waiter'}">

					<script type="text/javascript">
						/*
							jQuery document ready
						 */

						$(document).ready(function() {
							/*
								date store today date.
								d store today date.
								m store current month.
								y store current year.
							 */
							var date = new Date();
							var d = date.getDate();
							var m = date.getMonth();
							var y = date.getFullYear();

							/*
								Initialize fullCalendar and store into variable.
								Why in variable?
								Because doing so we can use it inside other function.
								In order to modify its option later.
							 */

							var calendar = $('#calendar').fullCalendar({
								/*
									header option will define our calendar header.
									left define what will be at left position in calendar
									center define what will be at center position in calendar
									right define what will be at right position in calendar
								 */
								header : {
									left : 'prev,next today',
									center : 'title',
									right : 'month,agendaWeek,agendaDay'
								},
								/*
									defaultView option used to define which view to show by default,
									for example we have used agendaWeek.
								 */
								defaultView : 'month',
								/*
									selectable:true will enable user to select datetime slot
									selectHelper will add helpers for selectable.
								 */
								selectable : true,
								selectHelper : true,
								/*
									when user select timeslot this option code will execute.
									It has three arguments. Start,end and allDay.
									Start means starting time of event.
									End means ending time of event.
									allDay means if events is for entire day or not.
								 */

								/*
									editable: true allow user to edit events.
								 */
								editable : false,
								/*
									events is the main option for calendar.
									for demo we have added predefined events in json object.
								 */

								events : {
									url : "getStaffShiftss/json",
									type : 'GET'
								}
							});

						});
					</script>

					<!-- List of restaurants -->
					<div class="wrapper wrapper-content">
						<div class="row">
							<div class="col-lg-6">
								<div class="ibox float-e-margins">
									<div class="ibox-title">
										<h5>Restaurants</h5>
										<div class="ibox-tools">
											<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
										</div>
									</div>
									<div class="ibox-content ibox-heading"
										style="background-color: #fff;">
										<h3>
											<i class="fa fa-glass"></i> Restaurant list
										</h3>
									</div>
									<div class="ibox-content">
										<div class="feed-activity-list">
											<c:forEach var="restaurant" items="${restaurants}">
												<div class="feed-element">
													<div>
														<small class="pull-right">1m ago</small> <strong><a
															href="restaurant/${restaurant.id}" style="color: #676a6c">${restaurant.name}</a></strong>
														<div>Lorem Ipsum is simply dummy text of the
															printing and typesetting industry. Lorem Ipsum</div>
														<small class="text-muted">Open 9 am - 11 pm</small>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="showCalendarShiftsWaiter" class="modal fade" role="dialog">
						<div class="modal-dialog" style="width: 725px">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Shifts</h4>
								</div>
								<div id='calendar'></div>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						$('#showCalendarShiftsWaiter').on('shown.bs.modal',
								function() {
									$("#calendar").fullCalendar('render');
								});
					</script>

				</c:when>
			</c:choose>
			<!--  Bidder central part -->
			<c:choose>
				<c:when test="${logedUser.role.roleName == 'Bidder'}">
					<!-- List of restaurants -->
					<div class="wrapper wrapper-content">
						<div class="row">
							<div class="col-lg-6">
								<div class="ibox float-e-margins">
									<div class="ibox-title">
										<h5>Restaurants</h5>
										<div class="ibox-tools">
											<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
										</div>
									</div>
									<div class="ibox-content ibox-heading"
										style="background-color: #fff;">
										<h3>
											<i class="fa fa-glass"></i> Restaurant list
										</h3>
									</div>
									<div class="ibox-content">
										<div class="feed-activity-list">
											<c:forEach var="restaurant" items="${restaurants}">
												<div class="feed-element">
													<div>
														<small class="pull-right">1m ago</small> <strong><a
															href="restaurant/${restaurant.id}" style="color: #676a6c">${restaurant.name}</a></strong>
														<div>Lorem Ipsum is simply dummy text of the
															printing and typesetting industry. Lorem Ipsum</div>
														<small class="text-muted">Open 9 am - 11 pm</small>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="bidderPassword" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Password</h4>
								</div>

								<form action="bidderPasswordChange" method="POST">
									<input class="form-control" name="oldPass" type="password"
										placeholder="Old password" required
										style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
									<input class="form-control" name="newPass1" type="password"
										placeholder="New passwod" required
										style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
									<input class="form-control" name="newPass2" type="password"
										placeholder="Repeat new passwod" required
										style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

									<div class="modal-footer" style="margin-top: 115px;">
										<button type="submit" class="btn btn-success"
											style="background: #1ab394; border: 1px solid #1ab394">Update</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</form>
							</div>
						</div>
					</div>

					<div id="bidderProfilUp" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Password</h4>
								</div>

								<form action="bidderProfUpdate" method="POST">
									<input class="form-control" name="fName" type="text"
										placeholder="First name" value="${logedUser.firstName} "
										required
										style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
									<input class="form-control" name="lName" type="text"
										placeholder="Last name" value="${logedUser.lastName} "
										required
										style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
									<input class="form-control" name="NewMail" type="email"
										value="${logedUser.email}" placeholder="Email" required
										style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

									<div class="modal-footer" style="margin-top: 115px;">
										<button type="submit" class="btn btn-success"
											style="background: #1ab394; border: 1px solid #1ab394">Update</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</form>
							</div>
						</div>
					</div>

					<div id="listaIzdatihPonuda" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Offers</h4>
								</div>
								<table id="customers">
									<tr>
										<th>Price</th>
										<th>Warranty</th>
										<th>Delivery date</th>
										<th>Restaurant</th>
									</tr>
									<c:forEach var="p" items="${listaSvihPonuda}">
										<tr>
											<td>${p.price}$</td>
											<td>${p.warranty }%</td>
											<td>${p.deadline }</td>
											<td>${p.grocaryList.restaurant.name}</td>
										</tr>

									</c:forEach>
								</table>

							</div>
						</div>
					</div>
				</c:when>
			</c:choose>
			<!-- Manager central part -->
			<c:choose>
				<c:when test="${logedUser.role.roleName == 'Manager'}">


					<script type="text/javascript">
						/*
							jQuery document ready
						 */

						$(document).ready(function() {
							/*
								date store today date.
								d store today date.
								m store current month.
								y store current year.
							 */
							var date = new Date();
							var d = date.getDate();
							var m = date.getMonth();
							var y = date.getFullYear();

							/*
								Initialize fullCalendar and store into variable.
								Why in variable?
								Because doing so we can use it inside other function.
								In order to modify its option later.
							 */

							var calendar = $('#calendar').fullCalendar({
								/*
									header option will define our calendar header.
									left define what will be at left position in calendar
									center define what will be at center position in calendar
									right define what will be at right position in calendar
								 */
								header : {
									left : 'prev,next today',
									center : 'title',
									right : 'month,agendaWeek,agendaDay'
								},
								/*
									defaultView option used to define which view to show by default,
									for example we have used agendaWeek.
								 */
								defaultView : 'month',
								/*
									selectable:true will enable user to select datetime slot
									selectHelper will add helpers for selectable.
								 */
								selectable : true,
								selectHelper : true,
								/*
									when user select timeslot this option code will execute.
									It has three arguments. Start,end and allDay.
									Start means starting time of event.
									End means ending time of event.
									allDay means if events is for entire day or not.
								 */

								/*
									editable: true allow user to edit events.
								 */
								editable : false,
								/*
									events is the main option for calendar.
									for demo we have added predefined events in json object.
								 */

								events : {
									url : "getShiftss/json",
									type : 'GET'
								}
							});

						});
					</script>

					<div class="tab-panels"
						style="height: 100%; background-color: #F3F3F4">

						<!-- Kartica za restoran  -->
						<div style="background-color: #F3F3F4; height: 100%" id="panel1"
							class="panel active">


							<div class="wrapper wrapper-content animated fadeInRight">
								<div class="row">
									<div class="col-lg-12">

										<div class="ibox product-detail">
											<div class="ibox-content">

												<div class="row">
													<div class="col-md-5">


														<div style="height: 400px">
															<div id="map" style="height: 100%"></div>

														</div>

													</div>
													<div class="col-md-7">

														<h2 class="font-bold m-b-xs">${restoran.name}</h2>
														<small>Vegan</small>
														<hr>
														<div class="starrr"></div>

														<div>

															<h1 class="product-main-price">${restoran.email}</h1>
														</div>
														<hr>
														<h4>Restaurant description</h4>

														<div class="small text-muted">
															${restoran.desription}
															<!-- It is a long established fact that a reader will be
																distracted by the readable content of a page when looking
																at its layout. The point of using Lorem Ipsum is that it
																has a more-or-less normal distribution of letters, as
																opposed to using 'Content here, content here', making it
																look like readable English. <br /> <br /> There are many
																variations of passages of Lorem Ipsum available, but the
																majority have suffered alteration in some form, by injected
																humour, or randomised words which don't look even slightly
																believable.-->
														</div>
														<dl class="dl-horizontal m-t-md small">
															<dt>Address</dt>
															<dd>${restoran.address}</dd>
															<dt>City</dt>
															<dd>${restoran.city}</dd>
															<dt>Phone</dt>
															<dd>${restoran.phone}</dd>
															<dt>Open hours</dt>
															<dd>${restoran.open_hours}</dd>
															<dt>Rate</dt>
															<dd>
																<span class="star">☆</span><span class="star">☆</span><span
																	class="star">☆</span><span class="star">☆</span><span
																	class="star">☆</span>
															</dd>
														</dl>
														<div class="text-right">
															<div class="btn-group">
																<button class="btn btn-white btn-sm" data-toggle="modal"
																	data-target="#editInfoRestaurant">
																	<i class="fa fa-list"></i> Edit
																</button>
																<button class="btn btn-white btn-sm" data-toggle="modal"
																	data-target="#openMenuRest">
																	<i class="fa fa-book"></i> Menu
																</button>
																<button class="btn btn-white btn-sm" data-toggle="modal"
																	data-target="#addNewShiftRest">
																	<i class="fa fa-clock-o"></i> Add shift
																</button>
																<button class="btn btn-white btn-sm" data-toggle="modal"
																	data-target="#addNewReonRest">Add new reon</button>
															</div>
														</div>


													</div>
												</div>

											</div>
										</div>

									</div>
								</div>
							</div>
							<h1 style="margin-left: 10px;">Schedule tables</h1>
							<!-- RASPORED STOLOVA RESTORANA -->
							<div class="wrapper wrapper-content animated fadeInRight">
								<div class="row">
									<div class="col-lg-12">

										<div class="ibox product-detail">
											<div class="ibox-content">

												<div class="row">
													<div class="btn-group">
														<button class="btn btn-white btn-sm" data-toggle="modal"
															data-target="#addNewTableRest">
															<i class="fa fa-plus"></i> Add the table
														</button>
														<button class="btn btn-white btn-sm" onclick="saveP()">
															<i class="fa fa-floppy-o"></i> Save
														</button>

													</div>
													<p style="color: white;">.</p>
													<section class="demo">
													<div class="gridster" style="width: 100%">

														<ul class="ull">
															<c:forEach var="position" items="${tables}">
																<li
																	title="Guest number: ${position.guest_num} Reon: ${position.reon_id.reon_num}"
																	id="${position.tableposition.id}" class="sto"
																	data-row="${position.tableposition.row }"
																	data-col="${position.tableposition.col}"
																	data-sizex="${position.tableposition.size_x}"
																	data-sizey="${position.tableposition.size_y}"><a
																	href="<c:url value="deleteTable/${position.tableposition.id}/${restoran.id}"/>"><button
																			class="btn btn-primary btn-md"
																			style="border-color: #F33A59; background-color: #F33A59">Delete</button>
																</a></li>
															</c:forEach>
														</ul>
													</div>
													</section>

												</div>

											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- RASPORED STOLOVA END -->
							<!-- Forma za dodavanje novog stola -->
							<div id="addNewTableRest" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Add new table</h4>
										</div>
										<form action="addNewTable" method="POST">
											<input class="form-control" type="text" id="guest_num"
												name="guest_num" placeholder="Guest number" required
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
											<select class="form-control" id="reon_id" name="reon_id"
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
												value=1>
												<option value="">Reon</option>
												<c:forEach var="i" begin="1" end="${restoran.reon_num}">
													<option value="${i}">${i}</option>
												</c:forEach>
											</select> <input type="hidden" name="id" value="${restoran.id}">
											<div class="modal-footer" style="margin-top: 15px;">
												<button type="submit" class="btn btn-success"
													style="background: #1ab394; border: 1px solid #1ab394">Save</button>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- END DODAVANJE NOVOG STOLA -->

							<!-- Dodavanje nove smene  -->
							<div id="addNewShiftRest" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Add new shift</h4>
										</div>
										<div style="height: 406px;">
											<div class="tab-panels" style="border-top: 1px solid #E0E0E0">
												<div>
													<p
														style="border-bottom: 1px solid #E0E0E0; border-bottom-color: #E0E0E0; font-family: Helvetica; font-size: 14px">
														Current shifts</p>
													<div
														style="width: 200px; position: relative; top: 0px; margin-left: 10px;">
														<c:forEach var="shift" items="${restaurantShifts}">
															<p style="font-size: 15px">${shift.shift_entry}
																${shift.start_shift} - ${shift.end_shift}</p>
														</c:forEach>

													</div>
													<div
														style="border-left: 1px solid #E0E0E0; float: right; position: absolute; top: 73px; left: 294px;">
														<h3 align="center">New shift</h3>
														<form action="newRestShift" method="POST">
															<input class="form-control" name="name" type="text"
																placeholder="Name" required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

															<input class="form-control" name="startTime" type="text"
																id="timePick" placeholder="Start: hh:mm:ss " required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

															<input class="form-control" name="endTime" type="text"
																placeholder="End: hh:mm:ss" required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

															<input type="hidden" name="idRest" value="${restoran.id}" />
															<div class="modal-footer" style="margin-top: 115px;">
																<button type="submit" class="btn btn-success"
																	style="background: #1ab394; border: 1px solid #1ab394">Add
																	shift</button>
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Close</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- END dodavanje nove smene restoranu -->

							<!-- Dodela novog reona restoranu -->
							<div id="addNewReonRest" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Add new reon</h4>
										</div>
										<div style="height: 315px;">
											<div class="tab-panels" style="border-top: 1px solid #E0E0E0">
												<div>
													<p
														style="border-bottom: 1px solid #E0E0E0; border-bottom-color: #E0E0E0; font-family: Helvetica; font-size: 14px">
														Current reons</p>
													<div
														style="width: 200px; position: relative; top: 0px; margin-left: 10px;">
														<c:forEach var="reon" items="${tipoviReona}">
															<p style="font-size: 15px">${reon.name}</p>
														</c:forEach>

													</div>
													<div
														style="border-left: 1px solid #E0E0E0; float: right; position: absolute; top: 73px; left: 294px;">
														<h3 align="center">New reon</h3>
														<form action="newRestReon" method="POST">

															<select class="form-control" name="reonType_id"
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																<option value="">Reon types</option>
																<c:forEach var="i" items="${sviTipovi}">
																	<option value="${i.id}">${i.name}</option>
																</c:forEach>
															</select>
															<button type="button" class="btn btn-white btn-sm"
																data-toggle="modal" data-target="#newTypeReon"
																style="position: relative; left: 200px">Add new
																type</button>
															<input type="hidden" name="idRest" value="${restoran.id}" />
															<div class="modal-footer" style="margin-top: 115px;">
																<button type="submit" class="btn btn-success"
																	style="background: #1ab394; border: 1px solid #1ab394">Add
																	reon</button>
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Close</button>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- END dodele reona restorana -->

							<div id="newTypeReon" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Add new shift</h4>
										</div>
										<form action="NewReonType" method="POST">
											<input class="form-control" name="name" type="text"
												placeholder="Name" required
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

											<div class="modal-footer" style="margin-top: 115px;">
												<button type="submit" class="btn btn-success"
													style="background: #1ab394; border: 1px solid #1ab394">Add</button>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</form>
									</div>
								</div>
							</div>


							<script type="text/javascript">
								var map;
								var marker;

								function initMap() {
									map = new google.maps.Map(document
											.getElementById('map'), {
										center : {
											lat : -34.397,
											lng : 150.644
										},
										zoom : 16
									});
									var geocoder = new google.maps.Geocoder();
									geocodeAddress(geocoder, map);

								}
								function geocodeAddress(geocoder, resultsMap) {
									var address = "${restoran.address}" + ","
											+ "${restoran.city}" + ",Srbija";
									geocoder
											.geocode(
													{
														'address' : address
													},
													function(results, status) {
														if (status === google.maps.GeocoderStatus.OK) {
															resultsMap
																	.setCenter(results[0].geometry.location);
															var marker = new google.maps.Marker(
																	{
																		map : resultsMap,
																		position : results[0].geometry.location,
																		title : '${restoran.name}'

																	});
														} else {
															alert('Geocode was not successful for the following reason: '
																	+ status);
														}
													});
								}
							</script>
							<script
								src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgytjuG18KoFhq97_uz71KSTGrtOFt6p8&signed_in=true&callback=initMap"
								async defer></script>

							<div id="editInfoRestaurant" class="modal fade" role="dialog">
								<div class="modal-dialog" style="width: 400px">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit information</h4>
										</div>
										<form action="editRestaurant" method="POST">
											<input class="form-control" name="name" type="text"
												id="restaurantName" placeholder="Name" required
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;"
												value="${restoran.name}"> <input
												class="form-control" type="text" id="address"
												placeholder="address" required
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
												name="address" value="${restoran.address}" /> <input
												class="form-control" type="text" id="address"
												placeholder="City" required
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
												name="city" value="${restoran.city}" /> <input
												class="form-control" name="desription" type="text"
												id="desription" placeholder="description" required
												value="${restoran.desription}"
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
											<input class="form-control" type="text" id="phone"
												name="phone" placeholder="phone" required
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
												value="${restoran.phone}" /> <input class="form-control"
												type="text" id="open_hours" name="open_hours" required
												placeholder="open hours" value="${restoran.open_hours}"
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />


											<input class="form-control" required type="text" id="shoeNum"
												name="reon_num" placeholder="Reon number"
												value="${restoran.reon_num}"
												style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />



											<input type="hidden" name="id" value="${restoran.id}">
											<input type="hidden" name="email" value="${restoran.email}">
											<input type="hidden" name="rate" value="${restoran.rate}">

											<div class="modal-footer" style="margin-top: 15px;">
												<button type="submit" class="btn btn-success"
													style="background: #1ab394; border: 1px solid #1ab394">Save</button>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!--  Edit restoran end -->

							<!-- Menu -->
							<div id="openMenuRest" class="modal fade" role="dialog">
								<div class="modal-dialog" style="width: 617px">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Menu</h4>
										</div>

										<div style="height: 500px;">
											<ul id="menuChoose" style="list-style: none;">
												<li class="promeniMeni" rel="panel212" class="active1">Food</li>
												<li class="promeniMeni" rel="panel222">Drinks</li>
											</ul>
											<div class="tab-panels" style="border-top: 1px solid #E0E0E0">

												<div class="panel1 active1" id="panel212">
													<!--  Izlistana jela -->
													<div
														style="float: left; overflow-y: scroll; overflow-x: hidden; height: 470px">

														<p
															style="margin-left: 12px; font-family: Helvetica; font-size: 14px">Current
															food</p>
														<c:if test="${fn:length(MainCours) gt 0}">

															<c:forEach var="item" items="${MainCours}">
																<div style="margin-left: 13px; padding: 4px;">
																	<img style="float: left;" width="80px" height="80px"
																		alt="image"
																		src="../springmvc/resources/img/${item.picture}">
																	<div
																		style="float: right; position: relative; top: 0px; margin-left: 10px; width: 185px">
																		<h3>${item.name }</h3>
																		<p>Category: Main course</p>
																		<p>Price: ${item.price} $</p>
																		<abbr title="Edit"><span
																			style="position: absolute; top: 5px; right: 5px;"
																			data-toggle="modal" data-target="#editDish${item.id}"><i
																				class="fa fa-cog"></i></span></abbr>
																	</div>
																</div>


																<div id="editDish${item.id}" class="modal fade"
																	role="dialog">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal">&times;</button>
																				<h4 class="modal-title">Update dish</h4>
																			</div>
																			<form action="editDish" method="POST">
																				<input class="form-control" name="name" type="text"
																					id="name" value="${item.name}" placeholder="Name"
																					required
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input class="form-control" name="price" type="text"
																					id="price" placeholder="Price " required
																					value="${item.price}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

																				<input type="hidden" name="type" value="MainCourse">

																				<input type="file" name="picture" accept="image/*"
																					value="${item.picture}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

																				<input type="hidden" name="itemID"
																					value="${item.id }">


																				<div class="modal-footer" style="margin-top: 15px;">
																					<button type="submit" class="btn btn-success"
																						style="background: #1ab394; border: 1px solid #1ab394">Update</button>
																					<button type="button" class="btn btn-default"
																						data-dismiss="modal">Close</button>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
																<p style="width: 3px; color: white">.</p>

															</c:forEach>
														</c:if>

														<c:if test="${fn:length(desert) gt 0}">

															<c:forEach var="item1" items="${desert}">
																<div style="margin-left: 13px; padding: 4px;">
																	<img style="float: left;" width="80px" height="80px"
																		alt="image"
																		src="../springmvc/resources/img/${item1.picture}">
																	<div
																		style="float: right; position: relative; top: 0px; margin-left: 10px; width: 185px">
																		<h3>${item1.name }</h3>
																		<p>Category: Desert</p>
																		<p>Price: ${item1.price} $</p>
																		<abbr title="Edit"><span
																			style="position: absolute; top: 5px; right: 5px;"
																			data-toggle="modal"
																			data-target="#editDishh${item1.id}"><i
																				class="fa fa-cog"></i></span></abbr>
																	</div>
																</div>

																<div id="editDishh${item1.id}" class="modal fade"
																	role="dialog">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal">&times;</button>
																				<h4 class="modal-title">Update dish</h4>
																			</div>
																			<form action="editDish" method="POST">
																				<input class="form-control" name="name" type="text"
																					id="name" value="${item1.name}" placeholder="Name"
																					required
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input class="form-control" name="price" type="text"
																					id="price" placeholder="Price " required
																					value="${item1.price}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

																				<input type="hidden" name="type" value="Desert">
																				<input type="file" name="picture" accept="image/*"
																					value="${item1.picture}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input type="hidden" name="itemID"
																					value="${item1.id }">

																				<div class="modal-footer" style="margin-top: 15px;">
																					<button type="submit" class="btn btn-success"
																						style="background: #1ab394; border: 1px solid #1ab394">Update</button>
																					<button type="button" class="btn btn-default"
																						data-dismiss="modal">Close</button>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
																<p style="width: 3px; color: white">.</p>

															</c:forEach>
														</c:if>

														<c:if test="${fn:length(appetizer) gt 0}">

															<c:forEach var="item2" items="${appetizer}">
																<div style="margin-left: 13px; padding: 4px;">
																	<img style="float: left;" width="80px" height="80px"
																		alt="image"
																		src="../springmvc/resources/img/${item2.picture}">
																	<div
																		style="float: right; position: relative; top: 0px; margin-left: 10px; width: 185px">
																		<h3>${item2.name }</h3>
																		<p>Category: Appetizer</p>
																		<p>Price: ${item2.price} $</p>
																		<abbr title="Edit"><span
																			style="position: absolute; top: 5px; right: 5px;"
																			data-toggle="modal"
																			data-target="#editDishhh${item2.id}"><i
																				class="fa fa-cog"></i></span></abbr>
																	</div>
																</div>
																<div id="editDishhh${item2.id}" class="modal fade"
																	role="dialog">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal">&times;</button>
																				<h4 class="modal-title">Update dish</h4>
																			</div>
																			<form action="editDish" method="POST">
																				<input class="form-control" name="name" type="text"
																					id="name" value="${item2.name}" placeholder="Name"
																					required
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input class="form-control" name="price" type="text"
																					id="price" placeholder="Price " required
																					value="${item2.price}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

																				<input type="hidden" name="type" value="Appetizer">
																				<input type="hidden" name="itemID"
																					value="${item2.id}"> <input type="file"
																					name="picture" accept="image/*"
																					value="${item2.picture}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">


																				<div class="modal-footer" style="margin-top: 15px;">
																					<button type="submit" class="btn btn-success"
																						style="background: #1ab394; border: 1px solid #1ab394">Update</button>
																					<button type="button" class="btn btn-default"
																						data-dismiss="modal">Close</button>
																				</div>
																			</form>
																		</div>
																	</div>
																</div>
																<p style="width: 3px; color: white">.</p>

															</c:forEach>
														</c:if>
													</div>

													<!-- Forma za unos hrane -->
													<div
														style="border-left: 1px solid #E0E0E0; float: right; position: absolute; height: 85%; top: 82px; left: 313px; overflow: hidden;">
														<h3 align="center">New dish</h3>
														<form action="newDish" method="POST">
															<input class="form-control" name="name" type="text"
																id="name" placeholder="Name" required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
															<input class="form-control" name="price" type="text"
																id="price" placeholder="Price " required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
															<select class="form-control" id="type" name="type"
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
																value=1 required>
																<option value="">Type</option>
																<option value="Appetizer">Appetizer</option>
																<option value="Desert">Desert</option>
																<option value="MainCourse">Main course</option>
															</select> <input type="file" name="picture" accept="image/*"
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
															<input type="hidden" name="itemID" value="1"> <input
																type="hidden" name="restID" value="${restoran.id}">
															<div class="modal-footer" style="margin-top: 115px;">
																<button type="submit" class="btn btn-success"
																	style="background: #1ab394; border: 1px solid #1ab394">Add
																	dish</button>
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Close</button>
															</div>

														</form>
													</div>
												</div>

												<div class="panel1" style="height: 300px" id="panel222">
													<!--  Izlistana pica -->
													<div
														style="float: left; overflow-y: scroll; overflow-x: hidden; height: 470px;">

														<p
															style="margin-left: 12px; font-family: Helvetica; font-size: 14px">Current
															drinks</p>

														<c:if test="${fn:length(alchDrink) gt 0}">

															<c:forEach var="itemDA" items="${alchDrink}">
																<div style="margin-left: 13px; padding: 4px;">
																	<img style="float: left;" width="80px" height="90px"
																		alt="image"
																		src="../springmvc/resources/img/${itemDA.picture}">
																	<div
																		style="float: right; position: relative; top: 0px; margin-left: 10px; width: 185px">
																		<h3>${itemDA.name }</h3>
																		<p>Category: Alcoholic</p>
																		<p>Price: ${itemDA.price} $</p>
																		<p>Quantity: ${itemDA.quantity}</p>
																		<abbr title="Edit"><span
																			style="position: absolute; top: 5px; right: 5px;"
																			data-toggle="modal"
																			data-target="#editDrink${itemDA.id}"><i
																				class="fa fa-cog"></i></span></abbr>
																	</div>
																</div>
																<div id="editDrink${itemDA.id}" class="modal fade"
																	role="dialog">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal">&times;</button>
																				<h4 class="modal-title">Update drink</h4>
																			</div>
																			<form action="editDrink" method="POST">
																				<input class="form-control" name="name" type="text"
																					id="name" placeholder="Name" required
																					value="${itemDA.name} "
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input class="form-control" name="price" type="text"
																					id="price" placeholder="Price " required
																					value="${itemDA.price} "
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input type="hidden" name="type" value="Alcoholic">
																				<input class="form-control" name="quantity"
																					type="text" id="quantity" placeholder="Quantity"
																					required value="${itemDA.quantity} "
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input type="file" name="picture" accept="image/*"
																					value="${itemDA.picture}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

																				<input type="hidden" name="id" value="${itemDA.id}">
																				<div class="modal-footer" style="margin-top: 55px;">
																					<button type="submit" class="btn btn-success"
																						style="background: #1ab394; border: 1px solid #1ab394">Update</button>
																					<button type="button" class="btn btn-default"
																						data-dismiss="modal">Close</button>
																				</div>

																			</form>
																		</div>
																	</div>
																</div>

																<p style="width: 3px; color: white">.</p>

															</c:forEach>
														</c:if>

														<c:if test="${fn:length(NonalchDrink) gt 0}">

															<c:forEach var="itemDNA" items="${NonalchDrink}">
																<div style="margin-left: 13px; padding: 4px;">
																	<img style="float: left;" width="80px" height="103px"
																		alt="image"
																		src="../springmvc/resources/img/${itemDNA.picture}">
																	<div
																		style="float: right; position: relative; top: 0px; margin-left: 10px; width: 185px">
																		<h3>${itemDNA.name }</h3>
																		<p>Category: Non alcoholic</p>
																		<p>Price: ${itemDNA.price} $</p>
																		<p>Quantity: ${itemDNA.quantity}</p>
																		<abbr title="Edit"><span
																			style="position: absolute; top: 5px; right: 5px;"
																			data-toggle="modal"
																			data-target="#editDrinkk${itemDNA.id}"><i
																				class="fa fa-cog"></i></span></abbr>
																	</div>
																</div>
																<div id="editDrinkk${itemDNA.id}" class="modal fade"
																	role="dialog">
																	<div class="modal-dialog">
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal">&times;</button>
																				<h4 class="modal-title">Update drink</h4>
																			</div>
																			<form action="editDrink" method="POST">
																				<input class="form-control" name="name" type="text"
																					id="name" placeholder="Name" required
																					value="${itemDNA.name} "
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input class="form-control" name="price" type="text"
																					id="price" placeholder="Price " required
																					value="${itemDNA.price} "
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input type="hidden" name="type"
																					value="NonAlcoholic"> <input
																					class="form-control" name="quantity" type="text"
																					id="quantity" placeholder="Quantity" required
																					value="${itemDNA.quantity} "
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
																				<input type="file" name="picture" accept="image/*"
																					value="${itemDNA.picture}"
																					style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

																				<input type="hidden" name="id" value="${itemDNA.id}">
																				<div class="modal-footer" style="margin-top: 55px;">
																					<button type="submit" class="btn btn-success"
																						style="background: #1ab394; border: 1px solid #1ab394">Update</button>
																					<button type="button" class="btn btn-default"
																						data-dismiss="modal">Close</button>
																				</div>

																			</form>
																		</div>
																	</div>
																</div>
																<p style="width: 3px; color: white">.</p>

															</c:forEach>
														</c:if>
													</div>
													<!-- Forma za unos pica -->
													<div
														style="float: right; position: absolute; height: 85%; top: 81px; left: 313px; overflow: hidden; border-left: 1px solid #E0E0E0;">
														<h3 align="center">New drink</h3>
														<form action="newDrink" method="POST">
															<input class="form-control" name="name" type="text"
																id="name" placeholder="Name" required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
															<input class="form-control" name="price" type="text"
																id="price" placeholder="Price " required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
															<select class="form-control" id="type" name="type"
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
																value=1 required>
																<option value="">Type</option>
																<option value="Alcoholic">Alcoholic</option>
																<option value="NonAlcoholic">Non alcoholic</option>
															</select> <input class="form-control" name="quantity" type="text"
																id="quantity" placeholder="Quantity" required
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">
															<input type="file" name="picture" accept="image/*"
																style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

															<input type="hidden" name="restID" value="${restoran.id}">
															<div class="modal-footer" style="margin-top: 55px;">
																<button type="submit" class="btn btn-success"
																	style="background: #1ab394; border: 1px solid #1ab394">Add
																	drink</button>
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Close</button>
															</div>

														</form>
													</div>
												</div>


											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- End menu -->
						</div>


						<!-- Kartica za zaposlene  -->
						<div style="background-color: #F3F3F4; height: 100%" id="panel2"
							class="panel">

							<button data-toggle="modal" data-target="#addNewStaff"
								class="btn btn-primary btn-md" style="margin-top: 10px">Add
								staff</button>

							<button data-toggle="modal" data-target="#showCalendarShifts"
								class="btn btn-primary btn-md" style="margin-top: 10px">Show
								shifts</button>

							<!-- Kalendarski prikaz -->
							<div id="showCalendarShifts" class="modal fade" role="dialog">
								<div class="modal-dialog" style="width: 725px">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Shifts</h4>
										</div>
										<div id='calendar'></div>
									</div>
								</div>
							</div>
							<script type="text/javascript">
								$('#showCalendarShifts').on(
										'shown.bs.modal',
										function() {
											$("#calendar").fullCalendar(
													'render');
										});
							</script>
							<!--  definisanje smena radnika -->
							<div id="showCalendarShifts" class="modal fade" role="dialog">
								<div class="modal-dialog" style="width: 610px">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Shifts</h4>
										</div>

									</div>
								</div>
							</div>

							<!-- Listanje radnika -->
							<c:if test="${fn:length(staffList) gt 0}">

								<div class="row" style="margin-top: 10px">
									<c:forEach var="staffs" items="${staffList}">

										<div class="col-lg-4">
											<div class="contact-box">

												<div class="col-sm-4">
													<div class="text-center">
														<img alt="image" class="img-circle m-t-xs img-responsive"
															src="../springmvc/resources/img/${staffs.picture} ">
													</div>
												</div>
												<div class="col-sm-8">
													<h3>
														<strong>${staffs.firstName} ${staffs.lastName}</strong>
													</h3>

													<address>
														<strong>${staffs.role.roleName}</strong><br> <i
															class="fa fa-envelope"></i> ${staffs.email} <br>
														Shoe number: ${staffs.shoe_num}<br> Dress size: ${ staffs.con_num}
														<abbr title="Phone"> </br> <i
															class="fa fa-birthday-cake" aria-hidden="true"></i>
														</abbr> ${staffs.birth_date } </br>
														<button class="btn btn-primary btn-md"
															id="radnik${staffs.id}"
															style="background-color: #1D7AF5; border-color: #1D7AF5; position: absolute; right: 10px"
															data-toggle="modal"
															data-target="#createShift${staffs.id}">Shifts</button>
													</address>
												</div>
												<div class="clearfix"></div>
											</div>
										</div>

										<div id="createShift${staffs.id}" class="modal fade"
											role="dialog">
											<div class="modal-dialog" style="width: 610px">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Define shift for
															${staffs.firstName} ${staffs.lastName}</h4>
													</div>
													<form action="newStaffShift" method="POST">
														<input class="form-control" name="shift_date" type="date"
															id="shift_date" placeholder="date" required
															style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;">
														<c:choose>
															<c:when test="${staffs.role.roleName == 'Waiter'}">
																<select class="form-control" id="reonNumber"
																	name="reonNumber"
																	style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
																	value=1>
																	<option value="">Reon</option>
																	<c:forEach var="i" begin="1" end="${restoran.reon_num}">
																		<option value="${i}">${i}</option>
																	</c:forEach>
																</select>
															</c:when>
															<c:otherwise>
																<input type="hidden" name="reonNumber" value=" ">
															</c:otherwise>
														</c:choose>

														<select class="form-control" id="shift_entry"
															name="shift_entry" required
															style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
															value=1>
															<option value="">Shift</option>
															<c:forEach var="shifts" items="${restaurantShifts}">
																<option value="${shifts.shift_entry}">${shifts.shift_entry}</option>
															</c:forEach>
														</select> <input type="hidden" name="staffID"
															value="${staffs.email}"> <input type="hidden"
															name="restID" value="${staffs.restaurant.id}">
														<div class="modal-footer" style="margin-top: 15px;">
															<button type="submit" class="btn btn-success"
																style="background: #1ab394">Save</button>
															<button type="button" class="btn btn-default"
																data-dismiss="modal">Close</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</c:if>
						</div>



						<!-- ZAPOSLENI RESTORANA start -->
						<div id="addNewStaff" class="modal fade" role="dialog">
							<div class="modal-dialog" style="width: 400px">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Add new staff</h4>
									</div>
									<form action="addNewStaff" method="POST">
										<input class="form-control" name="firstName" type="text"
											id="firstName" placeholder="First name" required
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 35px;"">

										<input class="form-control" type="text" id="lastName"
											placeholder="Last name" required
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
											name="lastName" ; /> <input class="form-control" required
											name="email" type="email" id="email" placeholder="Email"
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />
										<input class="form-control" type="password" id="regPassword"
											name="password" required placeholder="Password"
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />

										<select class="form-control" id="role" name="role_id" required
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
											value=1>
											<option value="">Role</option>
											<option value=3>Cook</option>
											<option value=7>Waiter</option>
											<option value=4>Barman</option>
										</select> <input class="form-control" type="date" id="birthDay"
											name="birth_day" placeholder="Birthday" required
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />


										<input class="form-control" type="text" id="shoeNum"
											name="shoe_num" placeholder="Shoe number" maxlength="2"
											required
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;" />

										<select class="form-control" id="conNum" name="con_num"
											placeholder="Shoe number"
											style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
											value=1 required>
											<option value="">Dress size</option>
											<option>S</option>
											<option>M</option>
											<option>L</option>
											<option>XL</option>
											<option>2XL</option>
											<option>3XL</option>
										</select> <input type="hidden" name="restaurant_id"
											value="${restoran.id}">

										<div class="modal-footer" style="margin-top: 15px;">
											<button type="submit" class="btn btn-success"
												style="background: #1ab394">Save</button>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- ZAPOSLENI RESTORANA End -->
					</div>

					<!-- Kartica za izvestaje -->
					<div style="background-color: #F3F3F4; height: 100%" id="panel3"
						class="panel">
						<h2>Attendance at the monthly level</h2>
						<div id="chartdiv" style="width: 100%; height: 330px;"></div>
						<h2>Attendance on a weekly basis</h2>
						<div id="divForDays" style="width: 100%; height: 330px;"></div>
						</br>
						<h1>Other reports restaurants</h1>
						</br>
						<h3 style="margin-left: 20px">Current rating restaurants: 4.8</h3>

						<c:if test="${fn:length(staffList) gt 0}">
							<h2>Revenue by waiters</h2>
							<div style="margin-left: 20px">
								<div class="row" style="margin-top: 10px;">
									<c:forEach var="staffs" items="${staffList}">
										<c:if test="${staffs.role.roleName=='Waiter'}">
											<div class="col-lg-4">
												<div class="contact-box">
													<div class="col-sm-4">
														<div class="text-center">
															<img alt="image" class="img-circle m-t-xs img-responsive"
																src="../springmvc/resources/img/${staffs.picture}">
														</div>
													</div>
													<div class="col-sm-8">
														<h3>
															<strong style="font-size: 20px">${staffs.firstName}
																${staffs.lastName} </strong>
														</h3>
														<strong>Waiter</strong><br>
														<p style="font-size: 14px">Former achieved revenues:
															5021 $</p>
														<p style="font-size: 14px">Raiting: ${hrana.rate}</p>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:if>
									</c:forEach>
								</div>
							</div>
						</c:if>



						<c:if
							test="${fn:length(MainCours) gt 0 || fn:length(appetizer) gt 0 || fn:length(desert) gt 0}">
							<h2>Food reviews</h2>
							<div
								style="margin-left: 20px; height: 340px; overflow-y: scroll;">
								<div>
									<div class="row" style="margin-top: 6px;">
										<c:forEach var="hrana" items="${MainCours}">
											<div class="col-lg-4">
												<div class="contact-box">
													<div class="col-sm-4">
														<div class="text-center">
															<img alt="image" class="img-circle m-t-xs img-responsive"
																src="../springmvc/resources/img/${hrana.picture}">
														</div>
													</div>
													<div class="col-sm-8">
														<h3>
															<strong style="font-size: 20px">${hrana.name}</strong>
														</h3>
														<strong>Price: ${hrana.price} $</strong><br>
														<p style="font-size: 14px">Raiting: ${hrana.rate}</p>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>

								<div>
									<div class="row" style="margin-top: 6px;">
										<c:forEach var="hrana" items="${appetizer}">
											<div class="col-lg-4">
												<div class="contact-box">
													<div class="col-sm-4">
														<div class="text-center">
															<img alt="image" class="img-circle m-t-xs img-responsive"
																src="../springmvc/resources/img/${hrana.picture}">
														</div>
													</div>
													<div class="col-sm-8">
														<h3>
															<strong style="font-size: 20px">${hrana.name}</strong>
														</h3>
														<strong>Price: ${hrana.price} $</strong><br>
														<p style="font-size: 14px">Raiting: ${hrana.rate}</p>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>

								<div>
									<div class="row" style="margin-top: 6px;">
										<c:forEach var="hrana" items="${desert}">
											<div class="col-lg-4">
												<div class="contact-box">
													<div class="col-sm-4">
														<div class="text-center">
															<img alt="image" class="img-circle m-t-xs img-responsive"
																src="../springmvc/resources/img/${hrana.picture}">
														</div>
													</div>
													<div class="col-sm-8">
														<h3>
															<strong style="font-size: 20px">${hrana.name}</strong>
														</h3>
														<strong>Price: ${hrana.price} $</strong><br>
														<p style="font-size: 14px">Raiting: ${hrana.rate }</p>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div>
									<div class="row" style="margin-top: 6px;">
										<c:forEach var="hrana" items="${alchDrink}">
											<div class="col-lg-4">
												<div class="contact-box">
													<div class="col-sm-4">
														<div class="text-center">
															<img alt="image" class="img-circle m-t-xs img-responsive"
																src="../springmvc/resources/img/${hrana.picture}">
														</div>
													</div>
													<div class="col-sm-8">
														<h3>
															<strong style="font-size: 20px">${hrana.name}</strong>
														</h3>
														<strong>Price: ${hrana.price} $</strong><br>
														<p style="font-size: 14px">Raiting: ${hrana.rate }</p>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div>
									<div class="row" style="margin-top: 6px;">
										<c:forEach var="hrana" items="${NonalchDrink}">
											<div class="col-lg-4">
												<div class="contact-box">
													<div class="col-sm-4">
														<div class="text-center">
															<img alt="image" class="img-circle m-t-xs img-responsive"
																src="../springmvc/resources/img/${hrana.picture}">
														</div>
													</div>
													<div class="col-sm-8">
														<h3>
															<strong style="font-size: 20px">${hrana.name}</strong>
														</h3>
														<strong>Price: ${hrana.price} $</strong><br>
														<p style="font-size: 14px">Raiting: ${hrana.rate }</p>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</c:if>
						<h2>Revenues restaurants on a monthly basis</h2>
						<div id="Prihodi" style="width: 100%; height: 330px;"></div>

					</div>

					<!-- Kartica za namirnice -->
					<div style="background-color: #F3F3F4; height: 100%" id="panel4"
						class="panel">
						<!--  DODAVANJE NOVE LISTE ZA NAMIRNICE -->
						<div id="newGroceryList" class="modal fade" role="dialog">
							<div class="modal-dialog" style="width: 400px">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Add new list</h4>
									</div>
									<h3 style="margin-left: 30px;">Enter the expiry date of
										the offer</h3>
									</br>
									<form action="newGroceryList" method="POST">
										<h3 style="margin-left: 48px;">From</h3>
										<input class="form-control" type="date" required name="GLfrom"
											style="width: 300px; height: 45px; margin: auto auto;">
										<h3 style="margin-left: 48px;">To</h3>
										<input class="form-control" type="date" required name="GLto"
											style="width: 300px; height: 45px; margin: auto auto;">

										<input type="hidden" name="restaurant_id"
											value="${restoran.id}">

										<div class="modal-footer" style="margin-top: 15px;">
											<button type="submit" class="btn btn-success"
												style="background: #1ab394; border: 1px solid #1ab394;">Save</button>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</form>
								</div>
							</div>
						</div>

						<button data-toggle="modal" data-target="#newGroceryList"
							class="btn btn-primary btn-md" style="margin-top: 10px">Add
							new shopping list</button>
						<c:forEach var="grocary" items="${grocList}">


							<h3 style="margin-top: 15px;">Offer from ${grocary.GLfrom}
								to ${grocary.GLto}</h3>
							<div style="height: 214px;">
								<div
									style="width: 426px; height: 210px; overflow-y: scroll; float: left;">
									<table id="customers">
										<tr>
											<th>Name</th>
											<th>Quantity</th>
											<th>Type</th>
										</tr>
										<c:forEach var="item" items="${ponude}">
											<c:if test="${grocary.id == item.grocaryList.id}">
												<tr>
													<td>${item.fooditem.name}</td>
													<td>${item.quantity}</td>
													<td>${item.fooditem.type}</td>
												</tr>
											</c:if>

										</c:forEach>
									</table>
								</div>
								<button data-toggle="modal"
									data-target="#openMenuRest1${grocary.id}"
									class="btn btn-primary btn-md" style="margin-left: 14px">Add
									new item</button>
								</br>
								<button data-toggle="modal"
									data-target="#showGrocOffers${grocary.id}"
									class="btn btn-primary btn-md"
									style="margin-top: 10px; margin-left: 14px">Show
									offers</button>
							</div>
							</br>

							<div id="showGrocOffers${grocary.id}" class="modal fade"
								role="dialog">
								<div class="modal-dialog" style="width: 400px">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Offers</h4>
										</div>
										<c:forEach var="pon" items="${offerForGroc}">
											<c:if test="${grocary.id==pon.grocaryList.id }">
												<div>
													<h3 style="margin-left: 15px;">${pon.user.firstName}
														${pon.user.lastName }</h3>
													<h4 style="margin-left: 25px;">Price: ${pon.price} $</h4>
													<h4 style="margin-left: 25px;">Warranty:
														${pon.warranty} %</h4>
													<h4 style="margin-left: 25px;">Delivery date:
														${pon.deadline}</h4>
													<hr>
													<form action="acceptOffer/1/${pon.id}" method="GET">
														<div
															style="position: relative; right: -224px; bottom: 70px;">
															<c:choose>
																<c:when test="${pon.accepted==1}">
																	<button disabled="disabled" class="btn btn-success"
																		style="background: #1ab394; border: 1px solid #1ab394;">Accepted</button>
																</c:when>
																<c:otherwise>
																	<button type="submit" class="btn btn-success"
																		style="background: #1ab394; border: 1px solid #1ab394;">Accept</button>
																</c:otherwise>
															</c:choose>

															<c:choose>
																<c:when test="${pon.accepted==0}">
																	<button disabled="disabled" type="button"
																		class="btn btn-success"
																		style="background: #E41C1C; border: 1px solid #E41C1C;">Beated
																		off</button>
																</c:when>
																<c:otherwise>
																	<a href="<c:url value="acceptOffer/0/${pon.id}"/>"><button
																			type="button" class="btn btn-success"
																			style="background: #E41C1C; border: 1px solid #E41C1C;">Beat
																			off</button></a>
																</c:otherwise>
															</c:choose>
														</div>
													</form>

												</div>
											</c:if>
										</c:forEach>

										<div class="modal-footer" style="margin-top: 15px;">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>

									</div>
								</div>
							</div>
							<!-- Dodavanje namirnica u listu -->
							<div id="openMenuRest1${grocary.id}" class="modal fade"
								role="dialog">
								<div class="modal-dialog" style="width: 617px">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Offers</h4>
										</div>

										<div style="height: 500px;">
											<div class="tab-panels" style="border-top: 1px solid #E0E0E0">
												<div>

													<div
														style="float: left; overflow-y: scroll; height: 450px; width: 314px">

														<p
															style="margin-left: 12px; font-family: Helvetica; font-size: 14px">Current
															items</p>
														<c:forEach var="items" items="${listaSvihItema}">
															<div
																style="position: relative; top: 0px; margin-left: 10px; background-color: #F9F9F9;">
																<h3>Name: ${items.name }</h3>
																<p style="font-size: 14px">Type: ${items.type}</p>
																<form action="addNewItemToCart" method="POST">
																	<input
																		style="width: 70px; border-radius: 5px; padding: 4px;"
																		type="text" name="quantity" placeholder="Quantity"
																		required /> <input type="hidden" name="name"
																		value="${items.name}"> <input type="hidden"
																		name="type" value="${items.type}"> <input
																		type="hidden" name="id" value="${items.id}"> <input
																		type="hidden" name="grocery_id" value="${grocary.id}">
																	<button type="submit" class="btn btn-success"
																		style="background: #1ab394; border: 1px solid #1ab394; margin-top: 6px; position: relative; right: -112px; bottom: 6px;">Add
																		to cart</button>
																	</br>
																</form>
															</div>
														</c:forEach>
														<div
															style="border-left: 1px solid #E0E0E0; float: right; position: absolute; height: 85%; top: 82px; left: 313px; overflow: hidden;">
															<h3 align="center">New item</h3>
															<form action="addNewItem" method="POST">
																<input class="form-control" name="name" type="text"
																	id="name" placeholder="Name" required
																	style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;">

																<select class="form-control" id="type" name="type"
																	placeholder="Type"
																	style="width: 300px; height: 45px; margin: auto auto; margin-top: 15px;"
																	required>
																	<option value="">Measuring code</option>
																	<option value="g">g</option>
																	<option value="kg">kg</option>
																	<option value="dl">dl</option>
																	<option value="l">l</option>
																</select>

																<div class="modal-footer" style="margin-top: 115px;">
																	<button type="submit" class="btn btn-success"
																		style="background: #1ab394; border: 1px solid #1ab394">Add
																		item</button>
																	<button type="button" class="btn btn-default"
																		data-dismiss="modal">Close</button>
																</div>

															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- End adding items-->
						</c:forEach>
					</div>
		</div>
		</c:when>
		</c:choose>
	</div>
	<!-- Mainly scripts -->



	<script src="../springmvc/resources/js/bootstrap.min.js"></script>
	<script
		src="../springmvc/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="../springmvc/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Flot -->
	<script src="../springmvc/resources/js/plugins/flot/jquery.flot.js"></script>
	<script
		src="../springmvc/resources/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="../springmvc/resources/js/plugins/flot/jquery.flot.spline.js"></script>
	<script
		src="../springmvc/resources/js/plugins/flot/jquery.flot.resize.js"></script>
	<script src="../springmvc/resources/js/plugins/flot/jquery.flot.pie.js"></script>
	<script
		src="../springmvc/resources/js/plugins/flot/jquery.flot.symbol.js"></script>
	<script
		src="../springmvc/resources/js/plugins/flot/jquery.flot.time.js"></script>

	<!-- Peity -->
	<script
		src="../springmvc/resources/js/plugins/peity/jquery.peity.min.js"></script>
	<script src="../springmvc/resources/js/demo/peity-demo.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="../springmvc/resources/js/inspinia.js"></script>
	<script src="../springmvc/resources/js/plugins/pace/pace.min.js"></script>

	<!-- jQuery UI -->
	<script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

	<!-- Jvectormap -->
	<script
		src="../springmvc/resources/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
	<script
		src="../springmvc/resources/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

	<!-- EayPIE -->
	<script
		src="../springmvc/resources/js/plugins/easypiechart/jquery.easypiechart.js"></script>

	<!-- Sparkline -->
	<script
		src="../springmvc/resources/js/plugins/sparkline/jquery.sparkline.min.js"></script>

	<!-- <script type="text/javascript" src="../springmvc/resources/gridster/assets/jquery.js"></script> -->
	<script type="text/javascript"
		src="../springmvc/resources/gridster/assets/jquery.gridster.js"></script>
	<script src="../springmvc/resources/js/plugins/pace/pace.min.js"></script>
	<!-- FooTable -->
	<script
		src="../springmvc/resources/js/plugins/footable/footable.all.min.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
	
	<script
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-route.js"></script>
	<script
		src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-2.1.3.js"></script>
	<script type="text/javascript" src="../springmvc/resources/js/app.js"></script>
	<script type="text/javascript"
		src="../springmvc/resources/js/validationByPage/homePage.js"></script>
	
	<!-- Dropzone  -->
	<script type="text/javascript"
		src="../springmvc/resources/js/dropzone.js"></script>
	
	<script type="text/javascript">
		var gridster;

		$(document).ready(function() {
			
			/* get user */

			gridtster = $(".gridster > .ull").gridster({
				widget_margins : [ 10, 10 ],
				widget_base_dimensions : [ 110, 110 ],
				min_cols : 10,
				serialize_params : function($w, wgd) {
					return {
						id : $($w).attr('id'),
						col : wgd.col,
						row : wgd.row,
						size_x : wgd.size_x,
						size_y : wgd.size_y
					};
				}
			}).data('gridster');
			//		var json = JSON.stringify(gridster.serialize());
			//		alert(json);
			
		});

		function saveP() {
			gridster = $(".gridster > .ull").gridster({
				widget_margins : [ 10, 10 ],
				widget_base_dimensions : [ 110, 110 ],
				min_cols : 10,
				serialize_params : function($w, wgd) {
					return {
						id : $($w).attr('id'),
						col : wgd.col,
						row : wgd.row,
						size_x : wgd.size_x,
						size_y : wgd.size_y
					};
				}
			}).data('gridster');
			$.ajax({
				type : "POST",
				contentType : 'application/json',
				dataType : 'text',
				url : "savePositions",
				data : JSON.stringify(gridster.serialize()),
				success : function(data) {
					if (data == "success") {
						$(".alrtTable").show();
						if ($(".alrtTable").is(":visible")) {
							$(".alrtTable").delay(1800).fadeOut(500);

						}
					}
				},
				error : function() {
					alert("rrr");
				}

			});
		}
	</script>
	<!-- Sparkline demo data  -->
	<script src="../springmvc/resources/js/demo/sparkline-demo.js"></script>
	<!-- Promena centralnog diva -->
	<script type="text/javascript">
		$(function() {
			$('.promeniCent').on('click', function() {
				$('.promeniCent.active').removeClass('active');
				$(this).addClass('active');

				var panelToSHow = $(this).attr('rel');

				$('.panel.active').show(100, function() {
					$(this).removeClass('active');
					$('#' + panelToSHow).hide(100, function() {
						$(this).addClass('active');
					});
				});
			});
		});
	</script>

	<!-- Promena menu diva -->
	<script type="text/javascript">
		$(function() {
			$('.promeniMeni').on('click', function() {
				$('.promeniMeni.active1').removeClass('active1');
				$(this).addClass('active1');

				var panelToSHow1 = $(this).attr('rel');

				$('.panel1.active1').show(100, function() {
					$(this).removeClass('active1');
					$('#' + panelToSHow1).hide(100, function() {
						$(this).addClass('active1');
					});
				});
			});
		});
	</script>

	<script>
		var chart3;

		var chartData3 = [ {
			"country" : "January",
			"visits" : 2025,
			"color" : "#6CB9EC"
		}, {
			"country" : "February",
			"visits" : 1882,
			"color" : "#6CB9EC"
		}, {
			"country" : "March",
			"visits" : 1809,
			"color" : "#6CB9EC"
		}, {
			"country" : "April",
			"visits" : 1322,
			"color" : "#6CB9EC"
		}, {
			"country" : "May",
			"visits" : 1122,
			"color" : "#6CB9EC"
		}, {
			"country" : "June",
			"visits" : 1114,
			"color" : "#6CB9EC"
		}, {
			"country" : "July",
			"visits" : 984,
			"color" : "#6CB9EC"
		}, {
			"country" : "August",
			"visits" : 711,
			"color" : "#6CB9EC"
		}, {
			"country" : "September",
			"visits" : 665,
			"color" : "#6CB9EC"
		}, {
			"country" : "October",
			"visits" : 580,
			"color" : "#6CB9EC"
		}, {
			"country" : "November",
			"visits" : 443,
			"color" : "#6CB9EC"
		}, {
			"country" : "Canada",
			"visits" : 441,
			"color" : "#6CB9EC"
		}, {
			"country" : "December",
			"visits" : 395,
			"color" : "#6CB9EC"
		} ];

		AmCharts.ready(function() {
			// SERIAL CHART
			chart3 = new AmCharts.AmSerialChart();
			chart3.dataProvider = chartData3;
			chart3.categoryField = "country";
			chart3.startDuration = 1;

			// AXES
			// category
			var categoryAxis3 = chart3.categoryAxis;
			categoryAxis3.labelRotation = 0;
			categoryAxis3.gridPosition = "start";

			// value
			// in case you don't want to change default settings of value axis,
			// you don't need to create it, as one value axis is created automatically.

			// GRAPH
			var graph3 = new AmCharts.AmGraph();
			graph3.valueField = "visits";
			graph3.balloonText = "[[category]]: <b>[[value]]</b>";
			graph3.type = "column";
			graph3.lineAlpha = 0;
			graph3.fillAlphas = 0.8;
			graph3.colorField = "color";
			chart3.addGraph(graph3);

			// CURSOR
			var chartCursor3 = new AmCharts.ChartCursor();
			chartCursor3.cursorAlpha = 0;
			chartCursor3.zoomable = false;
			chartCursor3.categoryBalloonEnabled = false;
			chart3.addChartCursor(chartCursor3);

			chart3.creditsPosition = "top-right";

			chart3.write("Prihodi");
		});
	</script>

	<script>
		var chart;

		var chartData = [ {
			"country" : "January",
			"visits" : 4025,
			"color" : "#6CB9EC"
		}, {
			"country" : "February",
			"visits" : 1882,
			"color" : "#6CB9EC"
		}, {
			"country" : "March",
			"visits" : 1809,
			"color" : "#6CB9EC"
		}, {
			"country" : "April",
			"visits" : 1322,
			"color" : "#6CB9EC"
		}, {
			"country" : "May",
			"visits" : 1122,
			"color" : "#6CB9EC"
		}, {
			"country" : "June",
			"visits" : 1114,
			"color" : "#6CB9EC"
		}, {
			"country" : "July",
			"visits" : 984,
			"color" : "#6CB9EC"
		}, {
			"country" : "August",
			"visits" : 711,
			"color" : "#6CB9EC"
		}, {
			"country" : "September",
			"visits" : 665,
			"color" : "#6CB9EC"
		}, {
			"country" : "October",
			"visits" : 580,
			"color" : "#6CB9EC"
		}, {
			"country" : "November",
			"visits" : 443,
			"color" : "#6CB9EC"
		}, {
			"country" : "Canada",
			"visits" : 441,
			"color" : "#6CB9EC"
		}, {
			"country" : "December",
			"visits" : 395,
			"color" : "#6CB9EC"
		} ];

		AmCharts.ready(function() {
			// SERIAL CHART
			chart = new AmCharts.AmSerialChart();
			chart.dataProvider = chartData;
			chart.categoryField = "country";
			chart.startDuration = 1;

			// AXES
			// category
			var categoryAxis = chart.categoryAxis;
			categoryAxis.labelRotation = 0;
			categoryAxis.gridPosition = "start";

			// value
			// in case you don't want to change default settings of value axis,
			// you don't need to create it, as one value axis is created automatically.

			// GRAPH
			var graph = new AmCharts.AmGraph();
			graph.valueField = "visits";
			graph.balloonText = "[[category]]: <b>[[value]]</b>";
			graph.type = "column";
			graph.lineAlpha = 0;
			graph.fillAlphas = 0.8;
			graph.colorField = "color";
			chart.addGraph(graph);

			// CURSOR
			var chartCursor = new AmCharts.ChartCursor();
			chartCursor.cursorAlpha = 0;
			chartCursor.zoomable = false;
			chartCursor.categoryBalloonEnabled = false;
			chart.addChartCursor(chartCursor);

			chart.creditsPosition = "top-right";

			chart.write("chartdiv");
		});
	</script>


	<script>
		var chart2;

		var chartData2 = [ {
			"country2" : "Monday",
			"visits" : 250
		}, {
			"country2" : "Tuesday",
			"visits" : 190
		}, {
			"country2" : "Wednesday",
			"visits" : 201
		}, {
			"country2" : "Thursday",
			"visits" : 130
		}, {
			"country2" : "Friday",
			"visits" : 225
		}, {
			"country2" : "Saturday",
			"visits" : 250
		}, {
			"country2" : "Sunday",
			"visits" : 320
		} ];

		AmCharts.ready(function() {
			// SERIAL CHART
			chart2 = new AmCharts.AmSerialChart();
			chart2.dataProvider = chartData2;
			chart2.categoryField = "country2";
			chart2.startDuration = 1;

			// AXES
			// category
			var categoryAxis2 = chart2.categoryAxis;
			categoryAxis2.labelRotation = 0;
			categoryAxis2.gridPosition = "start";

			// value
			// in case you don't want to change default settings of value axis,
			// you don't need to create it, as one value axis is created automatically.

			// GRAPH
			var graph2 = new AmCharts.AmGraph();
			graph2.valueField = "visits";
			graph2.balloonText = "[[category]]: <b>[[value]]</b>";
			graph2.type = "column";
			graph2.lineAlpha = 0;
			graph2.fillAlphas = 0.8;
			chart2.addGraph(graph2);

			// CURSOR
			var chartCursor = new AmCharts.ChartCursor();
			chartCursor.cursorAlpha = 0;
			chartCursor.zoomable = false;
			chartCursor.categoryBalloonEnabled = false;
			chart2.addChartCursor(chartCursor);

			chart2.creditsPosition = "top-right";

			chart2.write("divForDays");
		});
	</script>


	<!-- Socket.IO -->



	<script>
		$(document)
				.ready(

						function() {
							$('.chart').easyPieChart({
								barColor : '#f8ac59',
								//                scaleColor: false,
								scaleLength : 5,
								lineWidth : 4,
								size : 80
							});

							$('.chart2').easyPieChart({
								barColor : '#1c84c6',
								//                scaleColor: false,
								scaleLength : 5,
								lineWidth : 4,
								size : 80
							});

							var data2 = [ [ gd(2012, 1, 1), 7 ],
									[ gd(2012, 1, 2), 6 ],
									[ gd(2012, 1, 3), 4 ],
									[ gd(2012, 1, 4), 8 ],
									[ gd(2012, 1, 5), 9 ],
									[ gd(2012, 1, 6), 7 ],
									[ gd(2012, 1, 7), 5 ],
									[ gd(2012, 1, 8), 4 ],
									[ gd(2012, 1, 9), 7 ],
									[ gd(2012, 1, 10), 8 ],
									[ gd(2012, 1, 11), 9 ],
									[ gd(2012, 1, 12), 6 ],
									[ gd(2012, 1, 13), 4 ],
									[ gd(2012, 1, 14), 5 ],
									[ gd(2012, 1, 15), 11 ],
									[ gd(2012, 1, 16), 8 ],
									[ gd(2012, 1, 17), 8 ],
									[ gd(2012, 1, 18), 11 ],
									[ gd(2012, 1, 19), 11 ],
									[ gd(2012, 1, 20), 6 ],
									[ gd(2012, 1, 21), 6 ],
									[ gd(2012, 1, 22), 8 ],
									[ gd(2012, 1, 23), 11 ],
									[ gd(2012, 1, 24), 13 ],
									[ gd(2012, 1, 25), 7 ],
									[ gd(2012, 1, 26), 9 ],
									[ gd(2012, 1, 27), 9 ],
									[ gd(2012, 1, 28), 8 ],
									[ gd(2012, 1, 29), 5 ],
									[ gd(2012, 1, 30), 8 ],
									[ gd(2012, 1, 31), 25 ] ];

							var data3 = [ [ gd(2012, 1, 1), 800 ],
									[ gd(2012, 1, 2), 500 ],
									[ gd(2012, 1, 3), 600 ],
									[ gd(2012, 1, 4), 700 ],
									[ gd(2012, 1, 5), 500 ],
									[ gd(2012, 1, 6), 456 ],
									[ gd(2012, 1, 7), 800 ],
									[ gd(2012, 1, 8), 589 ],
									[ gd(2012, 1, 9), 467 ],
									[ gd(2012, 1, 10), 876 ],
									[ gd(2012, 1, 11), 689 ],
									[ gd(2012, 1, 12), 700 ],
									[ gd(2012, 1, 13), 500 ],
									[ gd(2012, 1, 14), 600 ],
									[ gd(2012, 1, 15), 700 ],
									[ gd(2012, 1, 16), 786 ],
									[ gd(2012, 1, 17), 345 ],
									[ gd(2012, 1, 18), 888 ],
									[ gd(2012, 1, 19), 888 ],
									[ gd(2012, 1, 20), 888 ],
									[ gd(2012, 1, 21), 987 ],
									[ gd(2012, 1, 22), 444 ],
									[ gd(2012, 1, 23), 999 ],
									[ gd(2012, 1, 24), 567 ],
									[ gd(2012, 1, 25), 786 ],
									[ gd(2012, 1, 26), 666 ],
									[ gd(2012, 1, 27), 888 ],
									[ gd(2012, 1, 28), 900 ],
									[ gd(2012, 1, 29), 178 ],
									[ gd(2012, 1, 30), 555 ],
									[ gd(2012, 1, 31), 993 ] ];

							var dataset = [ {
								label : "Number of orders",
								data : data3,
								color : "#1ab394",
								bars : {
									show : true,
									align : "center",
									barWidth : 24 * 60 * 60 * 600,
									lineWidth : 0
								}

							}, {
								label : "Payments",
								data : data2,
								yaxis : 2,
								color : "#1C84C6",
								lines : {
									lineWidth : 1,
									show : true,
									fill : true,
									fillColor : {
										colors : [ {
											opacity : 0.2
										}, {
											opacity : 0.4
										} ]
									}
								},
								splines : {
									show : false,
									tension : 0.6,
									lineWidth : 1,
									fill : 0.1
								},
							} ];

							var options = {
								xaxis : {
									mode : "time",
									tickSize : [ 3, "day" ],
									tickLength : 0,
									axisLabel : "Date",
									axisLabelUseCanvas : true,
									axisLabelFontSizePixels : 12,
									axisLabelFontFamily : 'Arial',
									axisLabelPadding : 10,
									color : "#d5d5d5"
								},
								yaxes : [ {
									position : "left",
									max : 1070,
									color : "#d5d5d5",
									axisLabelUseCanvas : true,
									axisLabelFontSizePixels : 12,
									axisLabelFontFamily : 'Arial',
									axisLabelPadding : 3
								}, {
									position : "right",
									clolor : "#d5d5d5",
									axisLabelUseCanvas : true,
									axisLabelFontSizePixels : 12,
									axisLabelFontFamily : ' Arial',
									axisLabelPadding : 67
								} ],
								legend : {
									noColumns : 1,
									labelBoxBorderColor : "#000000",
									position : "nw"
								},
								grid : {
									hoverable : false,
									borderWidth : 0
								}
							};

							function gd(year, month, day) {
								return new Date(year, month - 1, day).getTime();
							}

							var previousPoint = null, previousLabel = null;

							$
									.plot($("#flot-dashboard-chart"), dataset,
											options);

							var mapData = {
								"US" : 298,
								"SA" : 200,
								"DE" : 220,
								"FR" : 540,
								"CN" : 120,
								"AU" : 760,
								"BR" : 550,
								"IN" : 200,
								"GB" : 120,
							};

							$('#world-map').vectorMap({
								map : 'world_mill_en',
								backgroundColor : "transparent",
								regionStyle : {
									initial : {
										fill : '#e4e4e4',
										"fill-opacity" : 0.9,
										stroke : 'none',
										"stroke-width" : 0,
										"stroke-opacity" : 0
									}
								},

								series : {
									regions : [ {
										values : mapData,
										scale : [ "#1ab394", "#22d6b1" ],
										normalizeFunction : 'polynomial'
									} ]
								},
							});
						});
	</script>
</body>
</html>