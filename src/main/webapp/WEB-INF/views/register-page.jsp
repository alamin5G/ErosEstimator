<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/resources/component/jstl.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Spring Note</title>
<%@ include file="/WEB-INF/resources/component/links_file.jsp"%>
</head>
<body style="background-color:#f5f1f5">
	<%@ include file="/WEB-INF/resources/component/nav-bar.jsp"%>
	<div class="container-fluid m-0 p-0">
 		<div class="bg-image" 
     		style="background-image: url('<c:url value="/resources/img/ai.png" />');
            height: 100vh">
		
		 	<!-- register form start -->
			<div class="container pt-5 text-center">
				<div class="row">
					<div class="col-md-4 offset-md-4">
						<div class="card bg-transparent text-white rounded">
							<div class="card-header text-center fs-3">Create an account</div>
								<c:if test="${not empty msg}">
									<div class="bg-warning outline-danger rounded text-center p-1">
										<h5>${msg }</h5>
									</div>
									<c:remove var="msg"/>
								</c:if>
							<div class="card-body">
								<form action="registration-process" method="post">
									<div class="mb-3">
										<label for="name" class="form-label">Your Full Name</label> <input
											type="text" class="form-control" id="name" name="name"
											aria-describedby="emailHelp" placeholder="Enter your full Name" required>
		
									</div>
									<div class="mb-3">
										<label for="phone" class="form-label">Phone Number</label> <input
											type="tel" class="form-control" id="phone" name="phone" maxlength="11" minlength="11"
											placeholder="Enter phone number" required>
									</div>
									<div class="mb-3">
										<label for="dob" class="form-label">Date of Birth</label> <input
											type="date" class="form-control" id="dob" name="dob"
											required>
									</div>
									
									<fieldset class="row mb-3 border-danger">
										<legend class="col-form-label col-sm-3 pt-0">Gender:</legend>
										 <div class="col-sm-8">
											<div class="form-check form-check-inline">
											  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
											  <label class="form-check-label" for="inlineRadio1">Male</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
											  <label class="form-check-label" for="inlineRadio2">Female</label>
											</div>
										</div>
									</fieldset>
									
									<select class="form-select" aria-label="country" name="country">
									  	<option selected value="blank">Set Your Country</option>
									  	<option value="Argentina" label="Argentina"></option>
			                            <option value="Bangladesh" label="Bangladesh"></option>
			                            <option value="Bhutan" label="Bhutan"></option>
			                            <option value="Maldives" label="Maldives"></option>
			                            <option value="Nepal" label="Nepal"></option>
			                            <option value="Pakistan" label="Pakistan"></option>
			                            <option value="Srilanka" label="Srilanka"></option>
									</select>
									
									<div class="mb-3">
										<label for="email" class="form-label">Email address</label> <input
											type="email" class="form-control" id="email" name="email"
											placeholder="Enter your email address" required>
									</div>
									
									<div class="mb-3">
										<label for="password" class="form-label">Password</label> <input
											type="password" class="form-control" id="password" name="password"
											placeholder="Enter password" required>
									</div>

									<div class="mb-3 form-check">
										<input type="checkbox" class="form-check-input"
											id="exampleCheck" required> <label class="form-check-label"
											for="exampleCheck">Agreed on Terms and Condition.</label>
									</div>
									<button type="submit"
										class="btn btn-outline-warning btn-success mb-2 d-grid gap-2 col-6 mx-auto">Registration</button>
								</form>
								<div class="card-footer text-center text-white">
									Do you have an account? Go to <a href="user-login" class="btn text-decoration-none btn-outline-danger rounded p-1 m-1" >Login Page</a> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	<!-- Register form end -->
		</div>
	</div>

</body>
</html>