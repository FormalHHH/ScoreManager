
<h2>Grade List</h2>
${request}
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>

	<div class="well">
		<a href="${pageContext.request.contextPath}/user/create?form"
			class="btn btn-primary">New Line</a><br> <br>
		<form:form action="${pageContext.request.contextPath}/user/search"
			method="get" modelAttribute="userSearchForm"
			class="form-inline my-inline">
			<form:input path="name" class="form-control" />
			<input type="submit" value="Search" class="btn btn-default" />
		</form:form>
	</div>

	<div class="">
		<p>	Average: ${Average}</p>
		<p>	SD: ${SD}</p>
	</div>

	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Grade</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${page.content}">
				<tr>
					<td>${f:h(user.id)}</td>
					<td>${f:h(user.name)}</td>
					<td>${f:h(user.grade)}</td>
					<td><form:form
							action="${pageContext.request.contextPath}/user"
							class="form-inline">
							<input type="hidden" name="id" value="${f:h(user.id)}" />
							<input type="submit" class="btn btn-default"
								name="redirectToUpdate" value="Update" />
							<input type="submit" class="btn btn-danger"
								name="redirectToDelete" value="Delete" />
						</form:form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
