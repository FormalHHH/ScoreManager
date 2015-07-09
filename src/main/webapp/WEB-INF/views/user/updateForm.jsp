<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/user/update"
		modelAttribute="userForm" class="form-horizontal">
		<fieldset>
			<legend>Update Grade</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">Student Id</form:label>
				<div class="col col-sm-10">
					${f:h(userForm.id)}
					<form:input path="id" type="hidden" />
					<form:errors path="id" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">Student Name</form:label>
				<div class="col col-sm-10">
					${f:h(userForm.name)}
					<form:input path="name" type="hidden" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="grade" class="col col-sm-2 control-label">Grade</form:label>
				<div class="col col-sm-10">
					<form:input path="grade" class="form-control" />
					<form:errors path="grade" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-primary" name="confirm"
						value="Confirm" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
