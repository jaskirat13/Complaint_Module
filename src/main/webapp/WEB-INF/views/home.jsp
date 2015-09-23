<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
 
 <!-- code start here  -->
           <div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Complaint Item</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<button onclick="document.getElementById('popup').style.display=''" style="margin-bottom: 5px" type="button"
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
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>Action
											<th>Sr no.</th>
											<th>Item Code</th>
											<th>Item Name</th>
											<th>Current Stock</th>
											<th>Unit</th>
											<th>Department</th>
										</tr>
									</thead>
									<tbody>
										<tr class="odd gradeX">
											<td>
												<button type="button" class="btn btn-danger btn-circle">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle">
													<i class="fa fa-edit fa-fw"></i>
												</button>
											</td>
											<td>Trident</td>
											<td>Internet Explorer 4.0</td>
											<td>Win 95+</td>
											<td class="center">4</td>
											<td class="center">X</td>
											<td class="center">X</td>
										</tr>
										<tr class="even gradeC">
											<td>
												<button type="button" class="btn btn-danger btn-circle">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle">
													<i class="fa fa-edit fa-fw"></i>
												</button>
											</td>
											<td>Trident</td>
											<td>Internet Explorer 5.0</td>
											<td>Win 95+</td>
											<td class="center">5</td>
											<td class="center">C</td>
											<td class="center">X</td>
										</tr>
									
									</tbody>
								</table>
							</div>

							<!--Table End Here  -->

							<!-- Popup Start Here -->

							<div class="row"   id="popup" style=" position: absolute; width: 100%;top: 0px;display:none;z-index: 100">
								<div class="col-sm-2"></div>

								<div class="col-sm-6">
									<div class="panel panel-primary">
										<div class="panel-heading">Simple Form: Horizontal Form</div>
										<div class="panel-body">
											<form:form commandName="complaintItem" action="./add-item" method="post" class="simple_form form-horizontal" modelAttribute="complaintItem">
												<div style="display: none">
													<input name="utf8" type="hidden" value=""><input
														name="authenticity_token" type="hidden"
														value="l1ZnmS1VgwqvSJR3i7mBn76i4EUc4JwwwTqtIXwPE+o=">
												</div>


												<div class="form-group email required user_horizontal_email">
													<label class="email required col-sm-5 control-label"
														for="user_horizontal_email"> Department Name</label>
													<div class="col-sm-7">
														<input class="string email required form-control"
															id="user_horizontal_email" name="user_horizontal[email]"
															placeholder="Department Name" type="email">

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Department Type</label>
													<div class="col-sm-7">
														<select id="disabledSelect" class="form-control">
															<option>Disabled select</option>
														</select>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Item Code</label>
													<div class="col-sm-7">
														<input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]" placeholder=" Item Code"
															type="password">

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Item Name</label>
													<div class="col-sm-7">
														<input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]" placeholder="Item Name"
															type="password">

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Item Unit</label>
													<div class="col-sm-7">
														<select id="disabledSelect" class="form-control">
															<option>Disabled select</option>
														</select>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Maximum Stock</label>
													<div class="col-sm-7">
														<input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]"
															placeholder="Maximum Stock" type="password">

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Minimum Stock</label>
													<div class="col-sm-7">
														<input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]"
															placeholder=" Minimum Stock" type="password">

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Current Stock</label>
													<div class="col-sm-7">
														<input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]"
															placeholder="Current Stock" type="password">

													</div>
												</div>
												
												
												<div class="form-group password required user_horizontal_password col-sm-6">
													<input class="btn btn-default" name="commit" type="submit"
													value=" Create">
													
															<input class="btn btn-default" onclick="document.getElementById('popup').style.display='none'" name="commit" type="button"
													value="Cancel" >

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
 
 
 
    </tiles:putAttribute>
</tiles:insertDefinition>