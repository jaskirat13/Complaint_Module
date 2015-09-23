<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Repair and Maintenance System</title>

<!-- session object start-->
<c:if test="${session_theme eq null}">
<c:set var="session_theme" value="${pageContext.request.contextPath}/resources/css/mine/common_theme_one.css"    scope="session" />
</c:if>


<!-- session object end -->

<!-- Jaskirat common CSS -->
<link id="pagestyle" href="<c:url value="/resources/css/mine/common.css" />"
	rel="stylesheet">


<!-- Jaskirat lightbox CSS -->
<link id="pagestyle" href="<c:out value="${sessionScope.session_theme}" />"
	rel="stylesheet">


<!-- Bootstrap Core CSS -->
<link
	href="<c:url value="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<c:url value="/resources/bower_components/metisMenu/dist/metisMenu.min.css"/>"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="<c:url value="/resources/dist/css/timeline.css"/>"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value="/resources/dist/css/sb-admin-2.css"/>"
	rel="stylesheet">

<!-- Morris Charts CSS -->

<%-- <link	href="<c:url value="/resources/bower_components/morrisjs/morris.css"/>"	rel="stylesheet"> --%>

<!-- Custom Fonts -->
<link
	href="<c:url value="/resources/bower_components/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet" type="text/css">

<!-- Date picker css -->
<link href="<c:url value="/resources/css/datepicker.css"/>"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- jQuery -->




<!-- Jaskirat Lightbox JavaScript -->
<script src="<c:url value="/resources/js/lightbox/modality.min.js"/>"></script>

<script>
function set_theme(theme_path){
// 	alert('hi');
// 	document.getElementById('pagestyle').setAttribute('href', sheet);
// 	document.getElementById('loginModal').setAttribute('class', 'modal fade out');
	$(document).ready(function(){	
		
		
		$.ajax({
			url:"${pageContext.request.contextPath}/set-theme",
			type:"POST",
			data:{get_theme_path:theme_path},
			success:function(response){
				//getting back the path to theme .but no need now
				$('#loginModal').click();
				location.reload();
			},
			error:function(){
				
			}
		});
		
		
		
	});
	
	
	
	
	
}
</script>


<script
	src="<c:url value="/resources/bower_components/jquery/dist/jquery.min.js"/>"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->


<!-- Bootstrap Core JavaScript -->
<script
	src="<c:url value="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"/>"></script>


<!-- Metis Menu Plugin JavaScript -->
<script
	src="<c:url value="/resources/bower_components/metisMenu/dist/metisMenu.min.js"/>"></script>

<!-- Morris Charts JavaScript -->
<%-- <script	src="<c:url value="/resources/bower_components/raphael/raphael-min.js"/>"></script>
	<script	src="<c:url value="/resources/bower_components/morrisjs/morris.min.js"/>"></script>
	<script src="<c:url value="/resources/js/morris-data.js"/>"></script> --%>

<!-- Custom Theme JavaScript -->
<script src="<c:url value="/resources/dist/js/sb-admin-2.js"/>"></script>

<!-- 	Datepicker js -->

<script src="<c:url value="/resources/js/bootstrap-datepicker.js"/>"></script>



<!-- DataTables JavaScript -->
<script
	src="<c:url value="/resources/bower_components/datatables/media/js/jquery.dataTables.min.js"/>"></script>
<script
	src="<c:url value="/resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"/>"></script>


<!-- DataTables CSS -->
<%-- <link
	href="<c:url value="/resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"/>"
	rel="stylesheet"> --%>

<!-- DataTables Responsive CSS -->
<link
	href="<c:url value="/resources/bower_components/datatables-responsive/css/dataTables.responsive.css"/>"
	rel="stylesheet">

</head>

<body>


	<!-- jQuery -->
	<!-- <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="js/modality.jquery.min.js"></script>
    <script>$('#yourModalId').modality( {effect:'slide-up'} );</script> -->

	<div id="wrapper">

		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
			aria-labelledby="Login" aria-hidden="true">
			<div class="modal-dialog">
			
				<div class="modal-content">
					

						<div class="square" style="background: #AEF2D4" id="<c:url value="/resources/css/mine/common_theme_one.css"/>"  onclick="set_theme(this.id)" > 
							
						</div>
						
						<div class="square" style="background: #CCFECD" id="<c:url value="/resources/css/mine/common_theme_two.css"/>"  onclick="set_theme(this.id)">
							
						</div>
						<div class="square"  style="background: #C6FFFF" id="<c:url value="/resources/css/mine/common_theme_three.css"/>"  onclick="set_theme(this.id)">
							
						</div>

						<!-- 2nd row verticaly centered images in square columns -->

						<div class="square" style="background: #FFCECD" id="<c:url value="/resources/css/mine/common_theme_four.css"/>"   onclick="set_theme(this.id)">
							
						</div>
						<div class="square" style="background: #FFCEFF"  id="<c:url value="/resources/css/mine/common_theme_five.css"/>"  onclick="set_theme(this.id)">
							
						</div>
						<div class="square" style="background: #FFFCCC" id="<c:url value="/resources/css/mine/common_theme_six.css"/>"   onclick="set_theme(this.id)">
							
						</div>

						<!-- 3rd row responsive images in background with centered content -->

				</div>
			</div>
		</div>




















		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0;">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" style="color: #3981C7; "
					href="index.html"> Repair and Maintenance Module </a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">

				<li class="dropdown"><img
					src="<c:url value="/resources/images/color_picker_icon.png"/>"
					style="width: 30px; height: 30px" data-toggle="modal"
					data-target="#loginModal"> </img></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Pellentesque eleifend...</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>Read
									All Messages</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-messages --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>Task 1</strong> <span class="pull-right text-muted">40%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 2</strong> <span class="pull-right text-muted">20%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">20% Complete</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 3</strong> <span class="pull-right text-muted">60%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 4</strong> <span class="pull-right text-muted">80%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%">
											<span class="sr-only">80% Complete (danger)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Tasks</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-tasks --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
										class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Alerts</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->
		</nav>


		<!-- <script
			src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
		
		<script>
			$(document).ready(function(){
				   $(document).ready(function () {
				        var url = window.location;
				        $("li a").siblings().removeClass("active");
// 				        $("li a").Css('backgroud','red');
				    // Will also work for relative and absolute hrefs
				        $('ul.nav a').filter(function () {
				        	 $("#table_panel_header").text(url);
				        //	 $("#table_panel_header").html(url);
				         	document.getElementById('table_panel_header').setAttribute('href', url);
				            return this.href == url;
				        }).parent().addClass('active');
 				    });
				  
				   
				  
			 });
		</script>
		
</body>

</html>
