<form:form method="post"
	action="${pageContext.request.contextPath}/saveProduct"
	modelAttribute="product">
	<div class="modal fade" id="productmodal" tabindex="-1" role="dialog"
		aria-labelledby="productmodal" aria-hidden="true">

		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="productmodal">Product</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="product_form">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Date</label> <input name="addedDate" class="form-control"
									id="added_date" type="date" />
							</div>
							<div class="form-group col-md-6">
								<label>Product Name</label>
								<form:input path="product.name" class="form-control"
									id="product_name" placeholder="Enter Product number" />
							</div>
						</div>
						<div class="form-group">
							<label>Category</label>
							<form:select path="product.category" name="cid"
								class="form-control" id="select_cat">
								<form:options items="${categoryItems}" />
							</form:select>
						</div>
						<div class="form-group">
							<label>Brand</label>
							<form:select path="product.brand" name="bid" class="form-control">
								<form:options items="${brandItems}" />
							</form:select>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Product Price</label>
								<form:input path="product.price" name="productPrice"
									class="form-control" id="product_price"
									placeholder="Enter Product Price" />
							</div>
							<div class="form-group col-md-4">
								<label>Quantity</label>
								<form:input path="product.quantity" name="productStock"
									class="form-control" id="quantity" placeholder="Enter Quantity" />
							</div>
						</div>
						<form:input path="product.status.statusId" name="prodStatus"
							class="form-control" hidden="true" value="1" />

						<button type="submit" class="btn btn-primary">Add</button>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form:form>