<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
 
 <!-- code start here  -->
          
     <div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Register Complaint</h1>
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
											<th>Sr no.</th>
											<th>Complaint Date</th>
											<th>Name of Complainer</th>
											<th>Department</th>
											<th>Complaint To</th>
											<th>Contact</th>
										</tr>
									</thead>
									<tbody>
										<tr class="odd gradeX">
											<td>
												<button type="button" class="btn btn-danger btn-circle">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle">
													<i class="fa fa-pencil fa-fw"></i>
												</button>
												<button type="button" class="btn btn-info btn-circle">
													<i class="fa fa-eye fa-fw"></i>
												</button>
											</td>
											<td>Trident</td>
											<td>Internet Explorer 4.0</td>
											<td>Win 95+</td>
											<td class="center">4</td>
											<td class="center">X</td>
											<td class="center">9604349484</td>
										</tr>
										<tr class="even gradeC">
											<td>
												<button type="button" class="btn btn-danger btn-circle">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle">
													<i class="fa fa-pencil fa-fw"></i>
												</button>
												<button type="button" class="btn btn-info btn-circle">
													<i class="fa fa-eye fa-fw"></i>
												</button>
											</td>
											<td>Trident</td>
											<td>Internet Explorer 5.0</td>
											<td>Win 95+</td>
											<td class="center">5</td>
											<td class="center">X</td>
											<td class="center">9604349484</td>
										</tr>
										<tr class="odd gradeA">
											<td>
												<button type="button" class="btn btn-danger btn-circle">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle">
													<i class="fa fa-pencil fa-fw"></i>
												</button>
												<button type="button" class="btn btn-info btn-circle">
													<i class="fa fa-eye fa-fw"></i>
												</button>
											</td>
											<td>Trident</td>
											<td>Internet Explorer 5.5</td>
											<td>Win 95+</td>
											<td class="center">5.5</td>
											<td class="center">X</td>
											<td class="center">9604349484</td>
										</tr>


									</tbody>
								</table>
							</div>

							<!--Table End Here  -->

							<!-- Popup Start Here -->

							<div class="row" id="popup"
								style="position: absolute; width: 100%; top: 0px; display: none; z-index: 100">
								<div class="col-sm-2"></div>

								<div class="col-sm-6">
									<div class="panel panel-primary">
										<div class="panel-heading">Register Complaint</div>
										<div class="panel-body">
											<form:form commandName="complaintItem" action="./add-item"
												method="post" class="simple_form form-horizontal"
												modelAttribute="complaintItem">
												<div style="display: none">
													<input name="utf8" type="hidden" value=""><input
														name="authenticity_token" type="hidden"
														value="l1ZnmS1VgwqvSJR3i7mBn76i4EUc4JwwwTqtIXwPE+o=">
												</div>


												<div class="form-group email required user_horizontal_email">
													<label class="email required col-sm-5 control-label"
														for="user_horizontal_email"> Complaint No.</label>
													<div class="col-sm-7">
														<input class="form-control" placeholder="Complaint No."
															type="text">

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Complaint Date</label>
													<div class="col-sm-7">
														<div class='input-group date' >
															<input type='text' id='datetimepicker1' class="form-control" /> <span
																class="input-group-addon"> <span
																class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Name of Compaliner</label>
													<div class="col-sm-7">
														<input class="form-control" placeholder=" Compaliner"
															type="text">

													</div>
												</div>



												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Department :</label>
													<div class="col-sm-7">
														<select id="disabledSelect" class="form-control">
															<option>Disabled select</option>
														</select>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Complaint To :</label>
													<div class="col-sm-7">
														<select id="disabledSelect" class="form-control">
															<option>Disabled select</option>
														</select>

													</div>
												</div>


												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Complaint Details
														:</label>
													<div class="col-sm-7">
														<textarea class="form-control" rows="3"
															style="margin: 0px -4px 0px 0px;"></textarea>

													</div>
												</div>


												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Location of
														Complaint :</label>
													<div class="col-sm-7">
														<input class="form-control"
															placeholder="Location of Complaint" type="text">

													</div>
												</div>


												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Contact Number :</label>
													<div class="col-sm-7">
														<input class="form-control" placeholder="Contact Number"
															type="text">

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password col-sm-6">
													<input class="btn btn-default" name="commit" type="submit"
														value=" Create"> <input class="btn btn-default"
														onclick="document.getElementById('popup').style.display='none'"
														name="commit" type="button" value="Cancel">

												</div>


											</form:form>
										</div>


									</div>
								</div>
							</div>
							<div class="col-sm-2"></div>

							<script type="text/javascript">
								
								
								
						            // When the document is ready
						            $(document).ready(function () {
						                
						                $('#datetimepicker1').datepicker({
						                    format: "dd-mm-yyyy"
						                });  
						            
						            });
						        </script>
							</script>
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
 
 
 
    </tiles:putAttribute>
</tiles:insertDefinition>