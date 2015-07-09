
<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/user/delete"
		modelAttribute="userForm" class="form-horizontal">
		<fieldset>
			<legend>Delete Grade</legend>
			<div class="form-group">
				<form:label path="id" class="col col-sm-2 control-label">Student Name</form:label>
				<div class="col col-sm-10">${f:h(userForm.id)}</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">Student Name Name</form:label>
				<div class="col col-sm-10">${f:h(userForm.name)}</div>
			</div>
			<div class="form-group">
				<form:label path="grade" class="col col-sm-2 control-label">Grade</form:label>
				<div class="col col-sm-10">${f:h(userForm.grade)}</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="id" value="${f:h(user.id)}" />
					<input type="submit" class="btn btn-danger" name="delete"
						value="Delete" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
