<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
							<div class="table-responsive">
								<table class="table col-sm-12 table-bordered table-striped table-condensed cf"
									id="dataTables-example">
									<thead>
										<tr>
											<th>Action
											<th>Serial No</th>
											<th>Department Name</th>
											<th>Item Name</th>
											<th>Quality Order</th>
											<th>Order Date</th>
										</tr>
									</thead>
									<tbody>
										
										
										
												<tr class="even gradeC">
											<td>
												<button type="button" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#myModal" onclick="setDeptId(1})">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle" id="update-item" )">
													<i class="fa fa-edit fa-fw" ></i>
												</button>
												<button type="button" class="btn btn-info btn-circle">
													<i class="fa fa-eye fa-fw"></i>
												</button>
											</td>
											<td>1</td>
											<td>ETX</td>
											<td>Computer Science</td>
										<td>ETX</td>
										<td>ETX</td>
										</tr>
										
											
											
												<tr class="odd gradeX">
											<td>
												<button type="button" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#myModal" onclick="setDeptId(${dept.deptId})">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle" id="update-item" >
													<i class="fa fa-edit fa-fw" ></i>
												</button>
												<button type="button" class="btn btn-info btn-circle">
													<i class="fa fa-eye fa-fw"></i>
												</button>
											</td>
											<td>2</td>
											<td>ETX</td>
											<td>ETX</td>
										<td>ETX</td>
										<td>ETX</td>
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
										<div class="panel-heading">Item Order</div>
										<div class="panel-body">
											<form:form commandName="complaintItem" action="./add-item"
												method="post" class="simple_form form-horizontal"
												modelAttribute="complaintItem">
												<div style="display: none">
													<input name="utf8" type="hidden" value=""><input
														name="authenticity_token" type="hidden"
														value="l1ZnmS1VgwqvSJR3i7mBn76i4EUc4JwwwTqtIXwPE+o=">
												</div>


											

												

												



												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Department Name :</label>
													<div class="col-sm-7">
														<select id="disabledSelect" class="form-control">
															<option>Disabled select</option>
														</select>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Item Name:</label>
													<div class="col-sm-7">
														<select id="disabledSelect" class="form-control">
															<option>Disabled select</option>
														</select>

													</div>
												</div>

<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Quantity Order</label>
													<div class="col-sm-7">
														<input class="form-control" placeholder=" Compaliner"
															type="text">

													</div>
												</div>
												
<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="user_horizontal_password"> Order Date</label>
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

			<!-- Model Dialog -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<form action="./delete-dept" method="post" id="delete-form">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title" id="myModalLabel">Confirmation</h4>
                                        </div>
                                        <div class="modal-body">
                                            Delete this Item ?
                                        </div>
                                        <input type="hidden" name="deptId" id="delete-deptId">
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" id="cancel-btn">Cancel</button>
                                            <button type="button" class="btn btn-primary" onclick="deleteDept()">Delete</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                    </form>            
                            </div>
       </div>
     <!-- Code End here -->
     
     		<!--Popup start Her  -->
   
							<!--Popup End Her  -->
							
     
     
     <!-- other code start here -->
 <a href="#myModal" id="edit-href"
		onclick="document.getElementById('popup').style.display=''"
		hidden="hidden"></a>
	
		
		
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
    
    <style type="text/css">
    .error{
    color: red;
    }
    </style>
    
    <script type="text/javascript">
    var validator;
    
	$(document).ready(function(){
		
		$('#dataTables-example').DataTable({
            responsive: true
    });
		
		
		
		$("#add-item-btn").click(function(){
			$("#deptname").val('');
			$("#add-update-form").prop("action", "./add-dept");
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
	            	deptname: {
	    	            required: true
		             }
	            },
	            messages: {
	            	deptname: "Please Enter Department"
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
	
	//});
	
	var deleteDeptId = 0;
	
	function deleteDept(){
		console.log('deleteItemId : ' + deleteDeptId);
		$("#delete-deptId").val(deleteDeptId)
		//alert($("#delete-deptId").val());
		$("#delete-form").submit();
	}
	
	function setDeptId(deptId){
		console.log('deptId : ' + deptId);
		deleteDeptId = deptId;
	}
	
	function updateDept(deptId, deptName){
	//	alert(itemId+" - "+itemCode+ " - "+itemName+ " - "+minStock+ " - "+maxStock+ " - "+currentStock+ " - "+itemUnit + " - "+ deptId);
	
	$("#deptId").val(deptId);
		$("#deptname").val(deptName);
		$("#add-update-form").attr("action", "./update-dept");	
		$("#add-btn").val('Update');
		
		validator.resetForm();
		
		$("#edit-href").click();
	}
   
</script>
 
  <!-- other code end here -->
 
    </tiles:putAttribute>
</tiles:insertDefinition>