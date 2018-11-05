

<div class="modal fade" id="brandmodal" tabindex="-1" role="dialog"
		aria-labelledby="brandmodal" aria-hidden="true">
		<form:form method="post" action="${pageContext.request.contextPath}/saveBrand" modelAttribute="brand">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="brand_modal">Brand</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="brand_form">
						<div class="form-group">
								<label>Brand Name</label>
								<form:input path="brandName" type="text" class="form-control" />
							</div>
													<div class="form-group">
								
								<form:select path="statusid" name="bid" class="form-control">
								<form:options items="${brandItems}" />
							</form:select>
							</div>
							
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
		</form:form>
	</div>