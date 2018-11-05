

<div class="modal fade" id="categorymodal" tabindex="-1" role="dialog"
		aria-labelledby="categorymodal" aria-hidden="true">
		<form:form method="post"
			action="${pageContext.request.contextPath}/saveCategory"
			modelAttribute="category">

			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="categorymodal">Category</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close"></button>
					</div>

					<div class="modal-body">
						<div id="category_form">
							<div class="form-group">
								<label>Category Name</label>
								<form:input path="catName" type="text" class="form-control" />
							</div>
							<div class="form-group">
								<label>Parent Category</label>
								<form:select class="form-control" path="parentCat">
									<form:option value="0" label="Root" />
									<form:options items="${categoryItems}" />
								</form:select>
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</form:form>
	</div>
