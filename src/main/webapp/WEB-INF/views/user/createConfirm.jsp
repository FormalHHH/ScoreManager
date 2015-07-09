<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/user/create"
		modelAttribute="userForm" class="form-horizontal">
		<fieldset>
			<legend>New Grade</legend>
			<div class="form-group">
				<form:label path="id" class="col col-sm-2 control-label">Student ID</form:label>
				<div class="col col-sm-10">
					${f:h(userForm.id)}
					<form:hidden path="id" />
					<form:errors path="id" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">Student Name</form:label>
				<div class="col col-sm-10">
					${f:h(userForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="grade" class="col col-sm-2 control-label">Grade</form:label>
				<div class="col col-sm-10">
					${f:h(userForm.grade)}
					<form:hidden path="grade" />
					<form:errors path="grade" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-primary" name="create"
						value="Create" /> <input type="submit" class="btn btn-default"
						name="redo" value="Back to Form" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
