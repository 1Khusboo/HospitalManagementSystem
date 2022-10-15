<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.div-color {
	margin-top: 100px;
	margin-bottom: 160px;
}
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4 point-card">
					<div class="card-header text-center text-white bg-primary">
						<span class="fa fa-user-plus fa-3x"></span>
						<h4>Doctor Login</h4>
					</div>
					<c:if test="${not empty successMessage}">
						<p class="text-center text light text-success fs-3">${successMessage}</p>
						<c:remove var="successMessage" scope="session" />

					</c:if>

					<c:if test="${not empty errorMessage}">
						<p class="text-center text-danger fs-3">${errorMessage}</p>
						<c:remove var="errorMessage" scope="session" />

					</c:if>
					
					<div class="card-body">
						<form action="doctorLogin" method="post">
							<div class="form-group">
								<label>Enter Email</label> <input required type="email" name="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<br>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input required
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password">
							</div>
							<br>
							<button type="submit" class="btn btn-primary badge-pill btn-block col-md-12">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>