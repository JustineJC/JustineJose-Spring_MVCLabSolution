<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>

<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Update Student Details</h1>
				<form action="${pageContext.request.contextPath }/handle-student" method="post">
				<input type="text" value="${student.id}" name="id"/>
					<div class="form-group">
						<label for="name">Student Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailhelp"
							name="name" placeholder="update the student name here"
							value ="${student.name }">
					</div>
					<div class="form-group">
						<label for="department">Student Department</label><input
							type="text" class="form-control" id="department"
							name="department" placeholder="update the student department here"
							value ="${student.department}">
					</div>
					<div class="form-group">
						<label for="country">Student country</label><input type="text"
							class="form-control" id="country" name="country"
							placeholder="update the student country here"
							value ="${student.country}">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update Student</button>
					</div>



				</form>

			</div>
		</div>
	</div>
	<h1></h1>
</body>
</html>