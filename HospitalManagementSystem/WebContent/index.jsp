<%@page import="com.db.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.hello img {
	margin-right: 200px;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/doctors.jpg" class="d-block w-100" alt="..."
					height="530px">
			</div>
			<div class="carousel-item">
				<img src="img/hos1.jpg" class="d-block w-100" alt="..."
					height="530px">
			</div>
			<div class="carousel-item">
				<img src="img/hos2.png" class="d-block w-100" alt="..."
					height="530px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2">Key Features Of Our Hospital</p>
		<div class="row">

			<div class="col-md-8 p-5">
				<div class="row">

					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>The hospital database includes all the necessary patient
									data. The disease history, test results, prescribed treatment
									can be accessed by doctors without much delay in order to make
									an accurate diagnosis and monitor the patient’s health. It
									enables lower risks of mistakes.</p>

							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Hospitals authorities are able to manage their available
									resources, analyze staff work, reduce the equipment downtime,
									optimize the supply chain, etc. Another fact to mention is that
									hospital staff deal with the digital data instead of endless
									paperwork.</p>

							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Patients have their own system accounts where the list of
									various actions can be performed. They are able to make online
									requests or reservation, receive the test results, receive the
									consultation of the medical specialists and many more.</p>

							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>
									As the services and interactions are improved in all possible
									ways, everything is being planned with greater precision.<br>
									It saves the time of all the system users and provides them
									with up-to-date information. And provide a clean environment.
								</p>

							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="col-md-4 hello">
				<img alt="" src="img/doctors1.png" height="510px">
			</div>
		</div>
	</div>
	<hr>

	<div class=containerp-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/team8.png" width="250px" height="350px">
						<p class="fw-bold fs-5">Khusboo Tayal</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/team5.png" width="250px" height="350px">
						<p class="fw-bold fs-5">Dr.Lavina Aggarwal</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doctors1.png" width="250px" height="350px">
						<p class="fw-bold fs-5">Dr.Shiva Kumar</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/team6.png" width="250px" height="350px">
						<p class="fw-bold fs-5">Dr.Nikhil Sharma</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<%@include file="component/footer.jsp"%>

</body>
</html>