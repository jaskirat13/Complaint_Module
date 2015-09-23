<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
 
 <!-- code start here  -->
          <div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
						<label class="page-header">Complaint Item</label>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<button id="add-item-btn" onclick="document.getElementById('popup').style.display=''" style="margin-bottom: 5px" type="button"
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
						<div class="panel-heading"><a id="table_panel_header" >Complaint Item</a></div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table col-sm-12 table-bordered table-striped table-condensed cf"
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
										<!-- <tr class="odd gradeX">
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
										</tr> -->
									
									<c:forEach items="${list}" var="item">
										<tr class="odd gradeX">
											<td>
												<button type="button" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#myModal" onclick="setItemId(${item.itemId})">
													<i class="fa fa-times fa-fw"></i>
												</button>
												<button type="button" class="btn btn-warning btn-circle" id="update-item" 
												onclick="updateItem(${item.itemId}, '${item.itemCode}', '${item.itemname}', ${item.minStack}, ${item.maxStock}, ${item.currentStack}, '${item.itemUnit}', ${item.deptId }, ${item.complaintTypeId } )">
													<i class="fa fa-edit fa-fw" ></i>
												</button>
											</td>
											<td>${item.itemId}</td>
											<td>${item.itemCode}</td>
											<td>${item.itemname}</td>
											<td class="center">${item.currentStack}</td>
											<td class="center">${item.itemUnit}</td>
											<td class="center">${item.deptName}</td>
										</tr>
									</c:forEach>	
										

									</tbody>
								</table>
							</div>

							<!--Table End Here  -->

							<!-- Popup Start Here -->

							<div class="row"   id="popup" style=" position: absolute; width: 100%;top: 0px;display:none;z-index: 100">
								<div class="col-sm-2"></div>

								<div class="col-sm-6">
									<div class="panel panel-primary">
										<div class="panel-heading" id="popup-title">Add Item</div>
										<div class="panel-body">
											<form:form commandName="complaintItem" action="./add-item" method="post" class="simple_form form-horizontal" modelAttribute="complaintItem" id="add-update-form">
												<div style="display: none">
													<input name="utf8" type="hidden" value=""><input
														name="authenticity_token" type="hidden"
														value="l1ZnmS1VgwqvSJR3i7mBn76i4EUc4JwwwTqtIXwPE+o=">
												</div>


												<div class="form-group email required user_horizontal_email">
												<input type="hidden" name="itemId" id="itemId">
													<label class="email required col-sm-5 control-label"
														for="deptId"> Department Name</label>
													<div class="col-sm-7">
														<form:select id="deptId" path="deptId" class="form-control">
															<!-- <option>Disabled select</option> -->
														</form:select>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="complaintTypeId"> Complaint Type</label>
													<div class="col-sm-7">
														<form:select id="complaintTypeId" path="complaintTypeId" class="form-control">
															<!-- <option>Disabled select</option> -->
														</form:select>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="itemCode"> Item Code</label>
													<div class="col-sm-7">
														<!-- <input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]" placeholder=" Item Code"
															type="password"> -->
														<form:input path="itemCode" id="itemCode" placeholder=" Item Code" class="password required form-control"/>
													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="itemname"> Item Name</label>
													<div class="col-sm-7">
														<!-- <input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]" placeholder="Item Name"
															type="password"> -->
														<form:input path="itemname" id="itemname" placeholder=" Item Name" class="password required form-control"/>
													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="itemUnit"> Item Unit</label>
													<div class="col-sm-7">
														<form:select path="itemUnit" id="itemUnit" class="form-control" >
															<form:option value="Qty">Qty</form:option>
															<form:option value="kg">kg</form:option>
														</form:select>

													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="maxStock"> Maximum Stock</label>
													<div class="col-sm-7">
														<!-- <input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]"
															placeholder="Maximum Stock" type="password"> -->
														<form:input path="maxStock" id="maxStock" value="" class="password required form-control" placeholder="Maximum Stock"/>
													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="minStack"> Minimum Stock</label>
													<div class="col-sm-7">
														<!-- <input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]"
															placeholder=" Minimum Stock" type="password"> -->
														<form:input path="minStack" id="minStack" value="" class="password required form-control" placeholder=" Minimum Stock"/>
													</div>
												</div>

												<div
													class="form-group password required user_horizontal_password">
													<label class="password required col-sm-5 control-label"
														for="currentStack"> Current Stock</label>
													<div class="col-sm-7">
														<!-- <input class="password required form-control"
															id="user_horizontal_password"
															name="user_horizontal[password]"
															placeholder="Current Stock" type="password"> -->
														<form:input path="currentStack" id="currentStack" value=""  class="password required form-control" placeholder="Current Stock"/>
													</div>
												</div>
												
												
												<div class="form-group password required user_horizontal_password col-sm-6">
													<input class="btn btn-default" name="commit" type="submit"
													value=" Add" id="add-btn">
													
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

	<!-- Model Dialog -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<form action="./delete-item" method="post" id="delete-form">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title" id="myModalLabel">Confirmation</h4>
                                        </div>
                                        <div class="modal-body">
                                            Delete this Item ?
                                        </div>
                                        <input type="hidden" name="complaintItemId" id="complaintItemId">
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" id="cancel-btn">Cancel</button>
                                            <button type="button" class="btn btn-primary" onclick="deleteItem()">Delete</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                    </form>            
                            </div>
     
     <!-- Code End here -->
 
 <!-- other code start here -->
 
<a href="#myModal" id="edit-href" onclick="document.getElementById('popup').style.display=''"></a>

	
 
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
		
		$("#deptId").change(function(){
			var deptValue = $("#deptId").val();
			$("#complaintTypeId").empty();
			
			$.ajax({
				url:"./get-complaints",
				type:"POST",
				data:{"deptId" : deptValue},
				success:function(response){
					//alert(JSON.stringify(response));
					var text = '';
					$.each(response, function(index, complaint){
						text += '<option value="'+complaint.id+'">'+complaint.complaintTypeName+'</option>'
					});
					
					$("#complaintTypeId").html(text);
				},
				error:function(){
					
				}
			});
		});
		
		/* $("#deptId").select2(""); */
		$("#deptId").change();
		
		$("#add-item-btn").click(function(){
			$("#itemId").val('');
			$("#itemCode").val('');
			$("#itemname").val('');
			$("#minStack").val('');
			$("#maxStock").val('');
			$("#currentStack").val('');
			$("#itemUnit").val($("#itemUnit option:first").val());
			$("#deptId").val($("#deptId option:first").val());
			//$("#deptId").val(deptId).change();
			$("#complaintTypeId").empty();
			$("#add-update-form").prop("action", "./add-item");
			$("#add-btn").val('Add');
			$("#itemId").val(0);
			
			validator.resetForm();
		});
		
		$("#cancel-btn").click(function(){
			$("#itemId").val('');
			$("#itemCode").val('');
			$("#itemname").val('');
			$("#minStack").val('');
			$("#maxStock").val('');
			$("#currentStack").val('');
			$("#itemUnit").val($("#itemUnit option:first").val());
			$("#deptId").val($("#deptId option:first").val());
			//$("#deptId").val(deptId).change();
			$("#complaintTypeId").empty();
		});
		
		
		/* Form Validation */
	validator = 	$("#add-update-form").validate({
            rules: {
            	deptId: {
    	            required: true
	             },
            	complaintTypeId: {
    	            required: true
	             },
            	itemCode: {
    	            required: true
	             },
            	itemname: {
    	            required: true
	             },
            	itemUnit: {
    	            required: true
	             },
            	maxStock: {
    	            required: true,
    	            number:true
	             },
            	minStack: {
    	            required: true
	             },
            	currentStack: {
    	            required: true
	             }
            },
            messages: {
            	deptId: "Please Select Department",
            	complaintTypeId: "Please Select Complaint Type",
            	itemCode: "Please enter Item Code",
            	itemname: "Please enter Item Name",
            	itemUnit: "Please Select Item Unit",
            	maxStock: {
            		required:"Please enter Maximum Stock",
            		number:"Only Number Allowed"
            	},
            	minStack: "Please enter Minimum Stock",
            	currentStack: "Please enter Current Stock"
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
	
	var deleteItemId;
	
	function deleteItem(){
		console.log('deleteItemId : ' + deleteItemId);
		$("#complaintItemId").val(deleteItemId)
		$("#delete-form").submit();
	}
	
	function setItemId(itemId){
		deleteItemId = itemId;
	}
	
	function updateItem(itemId, itemCode, itemName, minStock, maxStock, currentStock, itemUnit, deptId, complaintTypeId){
	//	alert(itemId+" - "+itemCode+ " - "+itemName+ " - "+minStock+ " - "+maxStock+ " - "+currentStock+ " - "+itemUnit + " - "+ deptId);
		$("#itemId").val(itemId);
		$("#itemCode").val(itemCode);
		$("#itemname").val(itemName);
		$("#minStack").val(minStock);
		$("#maxStock").val(maxStock);
		$("#currentStack").val(currentStock);
		$("#itemUnit").val(itemUnit);
		$("#deptId").val(deptId).change();
		$("#complaintTypeId").val(complaintTypeId);
		$("#add-update-form").attr("action", "./update-item");	
		$("#add-btn").val('Update');
		validator.resetForm();
		$("#edit-href").click();
	}
	
</script>


 
    </tiles:putAttribute>
</tiles:insertDefinition>