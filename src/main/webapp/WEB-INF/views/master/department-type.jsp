<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<!-- code start here  -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Complaint Types</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<button id="add-complaint-btn"
						onclick="document.getElementById('popup').style.display=''"
						style="margin-bottom: 5px" type="button"
						class="btn btn-success btn-sm">
						<i class="fa fa-plus"></i> &nbsp;&nbsp;&nbsp; ADD
					</button>
				</div>
				<div class="col-lg-3 col-md-6"></div>
				<div class="col-lg-3 col-md-6"></div>

			</div>



			<!--Table Start Here  -->
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Item Master</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table col-sm-12 table-bordered table-striped table-condensed cf"
									id="dataTables-example">
									<thead>
										<tr>
											<th>Action
											<th>Sr no.</th>
											<th>Complaint Type</th>
											<th>Department Name</th>

										</tr>
									</thead>
									<tbody>

										<c:set var="count" value="1" />
										<c:forEach items="${list}" var="compliant">
											<c:if test="${count%2 eq 0 }">
												<tr class="odd gradeC">
													<td>
														<button type="button" class="btn btn-danger btn-circle"
															data-toggle="modal" data-target="#myModal"
															onclick="setComplaintId(${compliant.id})">
															<i class="fa fa-times fa-fw"></i>
														</button>
														<button type="button" class="btn btn-warning btn-circle"
															id="update-compliant"
															onclick="updateComplaint(${compliant.id}, '${compliant.complaintTypeName}', ${compliant.deptId} )">
															<i class="fa fa-edit fa-fw"></i>
														</button>
													</td>
													<td>${compliant.id}</td>
													<td>${compliant.complaintTypeName}</td>
													<td>${compliant.deptName}</td>

												</tr>
											</c:if>

											<c:if test="${count%2 ne 0 }">
												<tr class="odd gradeX">
													<td>
														<button type="button" class="btn btn-danger btn-circle"
															data-toggle="modal" data-target="#myModal"
															onclick="setComplaintId(${compliant.id})">
															<i class="fa fa-times fa-fw"></i>
														</button>
														<button type="button" class="btn btn-warning btn-circle"
															id="update-item"
															onclick="updateComplaint(${compliant.id}, '${compliant.complaintTypeName}', ${compliant.deptId} )">
															<i class="fa fa-edit fa-fw"></i>
														</button>
													</td>
													<td>${compliant.id}</td>
													<td>${compliant.complaintTypeName}</td>
													<td>${compliant.deptName}</td>

												</tr>
											</c:if>
											<c:set var="count" value="${count + 1 }" />
										</c:forEach>




									</tbody>
								</table>
							</div>

							<!--Table End Here  -->

							<!-- Popup Start Here -->

							<div class="row" id="popup"
								style="position: absolute; height: 100%; width: 100%; top: 0px; display: none; z-index: 100">
								<div class="col-sm-2"></div>

								<div class="col-sm-6">
									<div class="panel panel-primary">
										<div class="panel-heading">Department</div>
										<div class="panel-body">
											<form:form commandName="complaint" id="add-update-form"
												action="../add-complaint" method="post"
												class="simple_form form-horizontal"
												modelAttribute="complaint">
												<div style="display: none">
													<input name="utf8" type="hidden" value=""><input
														name="authenticity_token" type="hidden"
														value="l1ZnmS1VgwqvSJR3i7mBn76i4EUc4JwwwTqtIXwPE+o=">
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Department Type</label>
													<div class="col-sm-7">
														<!-- <select id="disabledSelect" class="form-control">
															<option>Disabled select</option>
														</select> -->
														<input type="hidden" id="id" name="id" value="0">
														<form:select path="deptId" id="deptId"
															class="form-control">

														</form:select>
													</div>
												</div>

												<div class="form-group email required user_horizontal_email">
													<label class="email required col-sm-5 control-label"
														for="user_horizontal_email"> Complaint Type</label>
													<div class="col-sm-7">
														<!-- <input class="string email required form-control"
															id="user_horizontal_email" name="user_horizontal[email]"
															placeholder="Department Name" type="email"> -->
														<form:input path="complaintTypeName"
															id="complaintTypeName" placeholder="Complaint Name"
															class="form-control" />
													</div>
												</div>


												<div
													class="form-group password required user_horizontal_password col-sm-6">
													<input class="btn btn-default" name="commit" type="submit"
														value=" Add" id="add-btn"> <input
														class="btn btn-default"
														onclick="document.getElementById('popup').style.display='none'"
														name="commit" type="button" value="Cancel">

												</div>
											</form:form>
										</div>


									</div>
								</div>
							</div>
							<div class="col-sm-2"></div>
							<!--Popup End Her  -->
							<!-- /.row -->

							<!-- /.panel-footer -->
						</div>
						<!-- /.panel .chat-panel -->
					</div>
					<!-- /.col-lg-4 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /#page-wrapper -->

		</div>
		<!-- /#wrapper -->

		<!-- Code End here -->

		<!-- delete div start -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true"
			style="display: none;">
			<form action="./delete-complaint" method="post" id="delete-form">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">Confirmation</h4>
						</div>
						<div class="modal-body">Delete this Item ?</div>
						<input type="hidden" name="id" id="deleteComplaintId">
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="cancel-btn">Cancel</button>
							<button type="button" class="btn btn-primary"
								onclick="deleteComplaint()">Delete</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</form>
		</div>
		<!-- delete div end -->

		<script
			src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

		<style type="text/css">
.error {
	color: red;
}
</style>

		<script type="text/javascript">
    var validator;
    
	$(document).ready(function(){
		
		$('#dataTables-example').DataTable({
            responsive: true
    });
		
		$.ajax({
			url:"./all-complaint-department",
			type:"POST",
			success:function(response){
				//alert(JSON.stringify(response));
				var text = '';
				$.each(response, function(index, dept){
					text += '<option value="'+dept.deptId+'">'+dept.deptname+'</option>'
				});
				
				$("#deptId").html(text);
			},
			error:function(){
				
			}
		});
		
		
		$("#add-complaint-btn").click(function(){
			$("#deptname").val('');
			$("#add-update-form").prop("action", "./add-complaint");
			$("#add-btn").val('Add');
			validator.resetForm();
		});
		
		$("#cancel-btn").click(function(){
			$("#deptname").val('');
		});
		
		
		/* Form Validation */
		validator = 	$("#add-update-form").validate({
	            rules: {
	            	deptId:{
	            		required: false
	            	},
	            	complaintTypeName: {
	    	            required: true
		             }
	            },
	            messages: {
	            	deptname: "Please Enter Department",
	            	complaintTypeName:"Please Enter Complaint Type"
	            }/* ,errorPlacement: function(error, element) {
	    			// Append error within linked label
	    			$( element )
	    				.closest( "form" )
	    					.find( "label[for='" + element.attr( "id" ) + "']" )
	    						.append( error );
	    		} *//* ,
	            submitHandler: function(form) {
	                form.submit();
	            } */
	        });
	});
	
	var deleteComplaintId = 0;
	
	function deleteComplaint(){
		console.log('deleteComplaintId : ' + deleteComplaintId);
		$("#deleteComplaintId").val(deleteComplaintId)
		//alert($("#delete-deptId").val());
		$("#delete-form").submit();
	}
	
	function setComplaintId(complaintId){
		console.log('complaintId : ' + complaintId);
		deleteComplaintId = complaintId;
	}
	
	function updateComplaint(id, complaintTypeName, deptId){
		//alert(itemId+" - "+itemCode+ " - "+itemName+ " - "+minStock+ " - "+maxStock+ " - "+currentStock+ " - "+itemUnit + " - "+ deptId);
		$("#id").val(id);
		$("#complaintTypeName").val(complaintTypeName);
		$("#deptId").val(deptId);
		$("#add-update-form").attr("action", "./update-complaint");	
		$("#add-btn").val('Update');
		validator.resetForm();
		$("#edit-href").click();
	}
	
</script>
		<a href="#myModal" id="edit-href"
			onclick="document.getElementById('popup').style.display=''"
			hidden="hidden"></a>

	</tiles:putAttribute>
</tiles:insertDefinition>