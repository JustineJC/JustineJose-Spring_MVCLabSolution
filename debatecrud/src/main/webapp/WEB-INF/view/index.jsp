<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">

				<h1 class="text-center mb-3">Student Debate Event</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">StudID</th>
							<th scope="col">Name</th>
							<th scope="col">Department</th>
							<th scope="col">Country</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${students }" var="i">
							<tr>
								<th scope="row">${i.id}</th>
								<td>${i.Name }</td>
								<td>${i.Department }</td>
								<td>${i.Country}</td>
								<td>
								<a href="delete/${i.id }"><i class="fa-duotone fa-trash-can text-danger"></i></a>
								<a href="update/${i.id }"><i class="fas fa-pen-nib text-primary"></i></a>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-student" class="btn btn-outline-success">Add
						Student</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
