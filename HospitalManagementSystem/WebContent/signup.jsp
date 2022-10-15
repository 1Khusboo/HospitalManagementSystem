<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.point-card{
box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
.div-color{
margin-top:100px;
margin-bottom:100px;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card-mt-4 point-card">
					<div class="card-header text-white text-center bg-primary">
						<span class="fa fa-user-plus fa-3x"></span>
						<h3>User Register</h3></div>
						<c:if test="${not empty successMessage}">
						<p class="text-center text light text-success fs-3">${successMessage}</p>
						<c:remove var="successMessage" scope="session"/>
						
						</c:if>
						
						<c:if test="${not empty errorMessage}">
						<p class="text-center text-danger fs-3">${errorMessage}</p>
						<c:remove var="errorMessage" scope="session" />
						
						</c:if>
					
					<div class="card-body">
						<form action="user_register" method="post">
							<div class="form-group">
								<label>Enter Full Name</label><input type="name"
									class="form-control" name="fullname" id="exampleInputName1" required
									placeholder="Enter Your Name">
							</div>
							<br>
							<div class="form-group">
								<label>Enter Email</label><input type="email"
									class="form-control" name="email" id="exampleInputEmail1" required
									placeholder="Enter Your Email">
							</div>
							<br>
							<div class="form-group">
								<label>Enter Password</label><input type="password"
									class="form-control" name="password" id="exampleInputPassword1" required
									placeholder="Enter Your Password">
							</div>
							<br>
							<button type="submit" class="btn btn-primary badge-pill btn-block col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>