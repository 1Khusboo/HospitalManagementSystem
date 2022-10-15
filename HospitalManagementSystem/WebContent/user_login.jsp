<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.div-color {
	margin-top: 100px;
	margin-bottom: 160px
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
				<div class="card-mt-4 point-card">
					<div class="card-header text-center text-white bg-primary">
						<span class="fa fa-user-circle fa-3x"></span>
						<h3>User Login</h3>
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
						<form action="userLogin" method="post">
							<div class="mb-3">
								<label class="form-Label">Email Address</label><input type="email" required
									class="form-control" name="email">
									
							</div>
							<br>
							<div class="mb-3">
								<label class="form-Label">Enter Password</label><input type="password" required
									class="form-control" name="password">
									
							</div>
							<br>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block col-md-12">Login</button>
						</form>
						<br> Don't have an account? <a href="signup.jsp"
							class="text-decoration-none">create one</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>