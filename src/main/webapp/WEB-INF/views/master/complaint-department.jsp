<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">



		<!-- code start here  -->
		<div id="page-wrapper">

			<div class="row">
				<div class="col-lg-12">

					<label class="page-header">Complaint Department</label>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<button onclick="document.getElementById('popup').style.display=''"
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
											<th>Serial Number</th>
											<th>Department Name</th>

										</tr>
									</thead>
									<tbody>


										<c:set var="count" value="1" />
										<c:forEach items="${list}" var="dept">
											<c:if test="${count%2 eq 0 }">
												<tr class="even gradeC">
													<td>
														<button type="button" class="btn btn-danger btn-circle"
															data-toggle="modal" data-target="#myModal"
															onclick="setDeptId(${dept.deptId})">
															<i class="fa fa-times fa-fw"></i>
														</button>
														<button type="button" class="btn btn-warning btn-circle"
															id="update-item"
															onclick="updateDept(${dept.deptId}, '${dept.deptname}' )">
															<i class="fa fa-edit fa-fw"></i>
														</button>
													</td>
													<td>${dept.deptId }</td>

													<td>${dept.deptname }</td>

												</tr>
											</c:if>

											<c:if test="${count%2 ne 0 }">
												<tr class="odd gradeX">
													<td>
														<button type="button" class="btn btn-danger btn-circle"
															data-toggle="modal" data-target="#myModal"
															onclick="setDeptId(${dept.deptId})">
															<i class="fa fa-times fa-fw"></i>
														</button>
														<button type="button" class="btn btn-warning btn-circle"
															id="update-item"
															onclick="updateDept(${dept.deptId}, '${dept.deptname}' )">
															<i class="fa fa-edit fa-fw"></i>
														</button>
													</td>
													<td>${dept.deptId }</td>

													<td>${dept.deptname }</td>

												</tr>
											</c:if>
											<c:set var="count" value="${count + 1 }" />
										</c:forEach>

									</tbody>
								</table>
							</div>
							
							<!--Table End Here  -->

							<!-- Popup Start Here -->


							<!--Popup End Her  -->
							<!-- /.row -->

							<!-- /.panel-footer -->
						</div>
						
						<!-- code start here for the iframe -->
						<div id="set_disable_view" style="position: relative; z-index: 2000; width: 100%; height: 100%;margin-top:-52%;  background: #ACAA9E;opacity:0.5;
						border:10px solid gray;border-radius:5px;">
								
							</div>
						
						<iframe
									style="top: 0px; position: absolute; z-index: 3000; width: 80%; opacity:1.5; height: auto; left: 10%; border: none"
									src="http://localhost:8080/Complaint_Module/master/complaint-department_form"></iframe>	
						<!-- code end here for the iframe -->	
							
						<!-- /.panel .chat-panel -->
					</div>
					<!-- /.col-lg-4 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /#page-wrapper -->

		</div>
		<!-- /#wrapper -->

		<!-- Model Dialog -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true"
			style="display: none;">
			<form action="./delete-dept" method="post" id="delete-form">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">Confirmation</h4>
						</div>
						<div class="modal-body">Delete this Item ?</div>
						<input type="hidden" name="deptId" id="delete-deptId">
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="cancel-btn">Cancel</button>
							<button type="button" class="btn btn-primary"
								onclick="deleteDept()">Delete</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</form>
		</div>

		<!-- Code End here -->

		<!-- other code start here -->


		<!-- other code end here -->

	</tiles:putAttribute>
</tiles:insertDefinition>