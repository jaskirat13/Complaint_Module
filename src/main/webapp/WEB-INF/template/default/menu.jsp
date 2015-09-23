<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<div class="input-group date">
							<input type="text" id="datetimepicker1" class="form-control">
							<span class="input-group-addon"> <span
								class="fa fa-search-plus"></span>
							</span>
						</div>
					</div> <!-- /input-group -->
				</li>
				<li><a href="${pageContext.request.contextPath}/dashboard"><i class="fa fa-dashboard fa-fw"></i>
						Dashboard</a></li>

				<li><a href=""><i class="fa fa-wrench fa-fw"></i> Repair
						and Maintenance<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">

						<li><a href="${pageContext.request.contextPath}/master"><i class="glyphicon glyphicon-user"></i> Master <span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li><a href="${pageContext.request.contextPath}/master/complaint-department">Complaint Department</a></li>
								<li><a href="${pageContext.request.contextPath}/master/complaint-type">Complaint Type</a></li>
								<li><a href="${pageContext.request.contextPath}/master/complaint-items">Complaint Item</a></li>
							</ul> <!-- /.nav-third-level --></li>

						<li><a href="${pageContext.request.contextPath}/transaction"><i class="fa fa-refresh"></i> Transaction <span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li><a href="${pageContext.request.contextPath}/complaint-items">Complaint</a></li>
								<li><a href="${pageContext.request.contextPath}/transaction/complaint-allotment">Complaint Allotment</a></li>
								<li><a href="${pageContext.request.contextPath}/transaction/complaint-item-order">Complaint Item-Order</a></li>
								<li><a href="${pageContext.request.contextPath}/transaction/complaint-workout">Complaint Workout</a></li>
								<li><a href="${pageContext.request.contextPath}/complaint-items">Create User</a></li>
							</ul> <!-- /.nav-third-level --></li>

						<li><a href="#"><i class="fa fa-print"></i>  Report <span class="fa arrow"></span></a>
							<ul class="nav nav-third-level">
								<li><a href="${pageContext.request.contextPath}/complaint-item-report" >Daily Report</a></li>
								<li><a href="#">Processing Report</a></li>
								<li><a href="#">Pending Report</a></li>

							</ul> <!-- /.nav-third-level --></li>



					</ul> <!-- /.nav-second-level --></li>





				<li><a href="#"><i class="fa fa-files-o fa-fw"></i> Sample
						Pages<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="blank.html">Blank Page</a></li>
					</ul> <!-- /.nav-second-level --></li>
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
	</nav>

</body>
</html>