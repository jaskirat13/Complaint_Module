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
<%-- <script
	src="<c:url value="/resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"/>"></script>
 --%>

<!-- DataTables CSS -->
<link
	href="<c:url value="/resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"/>"
	rel="stylesheet">

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


		<!-- <script
			src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
		
		<script>
			$(document).ready(function(){
				   $(document).ready(function () {
				        var url = window.location;
				    
				        
				        
				        $("li a").siblings().removeClass("active");
// 				        $("li a").Css('backgroud','red');
				     
// 				$('ul.nav a[href="'+ url +'"]').parent().addClass('active');
             
             
				    // Will also work for relative and absolute hrefs
				        $('ul.nav a').filter(function () {
				            return this.href == url;
				        }).parent().addClass('active');
 				    });
			 });
		</script>
		
</body>

</html>
