<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.db.DbConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.User"%>
<%@page import="com.dao.SpecialistDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<c:if test="${empty docObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>

	</c:if>
	<%@include file="navbar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 ">
				<div class="card paint-card">
					<p class="text-center fs-3">Change Password</p>
					<c:if test="${not empty successMessage}">
						<p class="text-center text light text-success fs-3">${successMessage}</p>
						<c:remove var="successMessage" scope="session" />

					</c:if>

					<c:if test="${not empty errorMessage}">
						<p class="text-center text-danger fs-3">${errorMessage}</p>
						<c:remove var="errorMessage" scope="session" />

					</c:if>
					<div class="card-body">
						<form action="../docChangePassword" method="post">
							<div class="mb-3">
								<label>Enter New Password</label> <input type="text"
									name="newPassword" class="form-control" required>
							</div>

							<div class="mb-3">
								<label>Enter Old Password</label> <input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							<input type="hidden" value="${docObj.id}" name="uid">
							<button class="btn btn-primary col-md-12">Change
								Password</button>

						</form>
					</div>

				</div>
			</div>

			<div class="col-md-5 offset-md-2">

				<div class="card paint-card">
					<p class="text-center fs-2">Edit Profile</p>
					<c:if test="${not empty successMessaged}">
						<p class="text-center text light text-success fs-3">${successMessaged}</p>
						<c:remove var="successMessaged" scope="session" />

					</c:if>

					<c:if test="${not empty errorMessaged}">
						<p class="text-center text-danger fs-3">${errorMessaged}</p>
						<c:remove var="errorMessaged" scope="session" />

					</c:if>
					<div class="card-body"></div>
					<form action="../doctorUpdateProfile" method="post">
						<div class="mb-3">
							<label class="form-Label">Full Name</label> <input type="text"
								required name="fullname" class="form-control"
								value="${docObj.fullName}">
						</div>

						<div class="mb-3">
							<label class="form-Label">DOB</label> <input type="date" required
								name="dob" class="form-control" value="${docObj.dob}">
						</div>

						<div class="mb-3">
							<label class="form-Label">Qualification</label> <input
								type="text" required name="qualification" class="form-control"
								value="${docObj.qualification}">
						</div>

						<div class="mb-3">
							<label class="form-Label">Specialist</label> <select type="text"
								required name="spec" class="form-control">
								<option>${docObj.specialist}</option>


								<%
								SpecialistDao dao = new SpecialistDao(DbConnect.getConnection());
								List<Specialist> list = dao.getAllSpecialist();
								for (Specialist s : list) {
								%>
								<option><%=s.getSpecialistName()%></option>
								<%
								}
								%>


							</select>
						</div>

						<div class="mb-3">
							<label class="form-Label">Email</label> <input type="text"
								readonly required name="email" class="form-control"
								value="${docObj.email }">
						</div>

						<div class="mb-3">
							<label class="form-Label">Mob No</label> <input type="text"
								required name="mobno" class="form-control"
								value="${docObj.mobNo }">
						</div>
						<input type="hidden" name="id" value="${docObj.id }">

						<button type="submit" class="btn btn-primary">Update</button>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>