<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="iframe">
	<tiles:putAttribute name="body">

		<!-- code start here  -->
		<!--Table End Here  -->
		<!-- Popup Start Here -->

		<div class="row" id="popup"">
			<div class="col-sm-12">
				<div class="panel panel-primary">
					<div class="panel-heading">Department</div>
					<div class="panel-body">
						<form:form commandName="department" action="./add-dept"
							method="post" class="simple_form form-horizontal"
							modelAttribute="department" id="add-update-form">
							<div style="display: none">
								<!-- <input name="utf8" type="hidden" value=""><input
														name="authenticity_token" type="hidden"
														value="l1ZnmS1VgwqvSJR3i7mBn76i4EUc4JwwwTqtIXwPE+o="> -->
							</div>

							<input type="hidden" name="deptId" id="deptId" value="0">
							<div class="form-group email required user_horizontal_email">
								<label class="email required col-sm-5 control-label"
									for="deptname"> Department Name</label>
								<div class="col-sm-7">
									<!-- <input class="string email required form-control"
															id="user_horizontal_email" name="user_horizontal[email]"
															placeholder="Department Name" type="email"> -->
									<form:input path="deptname" id="deptname" class="form-control"
										placeholder="Department Name" />
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
		<!--Popup End Her  -->
		<!-- /.row -->


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
		<a href="#myModal" id="edit-href"
			onclick="document.getElementById('popup').style.display=''"
			hidden="hidden"></a>



		<script
			src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

		<style type="text/css">
.error {
	color: red;
}
</style>

		<script type="text/javascript">
			var validator;

			$(document).ready(function() {

				$('#dataTables-example').DataTable({
					responsive : true
				});

				$("#add-item-btn").click(function() {
					$("#deptname").val('');
					$("#add-update-form").prop("action", "./add-dept");
					$("#add-btn").val('Add');
					validator.resetForm();
				});

				$("#cancel-btn").click(function() {
					$("#deptname").val('');
				});

				/* Form Validation */
				validator = $("#add-update-form").validate({
					rules : {
						deptId : {
							required : false
						},
						deptname : {
							required : true
						}
					},
					messages : {
						deptname : "Please Enter Department"
					}
				/* ,errorPlacement: function(error, element) {
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


			var deleteDeptId = 0;

			function deleteDept() {
				console.log('deleteItemId : ' + deleteDeptId);
				$("#delete-deptId").val(deleteDeptId)
				//alert($("#delete-deptId").val());
				$("#delete-form").submit();
			}

			function setDeptId(deptId) {
				console.log('deptId : ' + deptId);
				deleteDeptId = deptId;
			}

			function updateDept(deptId, deptName) {
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