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
				<h1 class="text-center mb-3">Fill the Student Details</h1>
				<form action="handle-student" method="post">
					<div class="form-group">
						<label for="name">Student Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailhelp"
							name="name" placeholder="Enter the student name here">
					</div>
					<div class="form-group">
						<label for="department">Student Department</label><input
							type="text" class="form-control" id="department"
							name="department" placeholder="Enter the student department here">
					</div>
					<div class="form-group">
						<label for="country">Student country</label><input type="text"
							class="form-control" id="country" name="country"
							placeholder="Enter the student country here">
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add Student</button>
					</div>



				</form>

			</div>
		</div>
	</div>
	<h1></h1>
</body>
</html>