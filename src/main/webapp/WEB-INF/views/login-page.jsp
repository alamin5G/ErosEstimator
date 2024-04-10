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
     		style="background-image: url('<c:url value="/resources/img/squirrel.jpg" />');
            height: 100vh">
		
		 	<!-- login form start -->
			<div class="container pt-5 text-center">
				<div class="row">
					<div class="col-md-6 offset-md-3">
						<div class="card bg-transparent text-white rounded">
							<div class="card-header text-center fs-3">Login</div>
								
								<c:if test="${not empty msg}">
									<div class="bg-warning outline-danger rounded text-center p-1">
										<h5>${msg }</h5>
									</div>
									<c:remove var="msg"/>
								</c:if>
								
							<div class="card-body">
								<form action="login-process" method="post">
									<div class="mb-3">
										<label for="email" class="form-label">Email address</label> <input
											type="email" class="form-control" id="email" name="email"
											placeholder="Enter your registered email" required>
									</div>
									<div class="mb-3">
										<label for="password" class="form-label">Password</label> <input
											type="password" class="form-control" id="password" name="password"
											placeholder="Enter password" required>
									</div>
		
									<div class="mb-3 form-check">
										<input type="checkbox" class="form-check-input" name="checkbox"
											id="exampleCheck1" required> <label class="form-check-label text-black text-start"
											for="exampleCheck1">Agreed on Terms and Condition.</label>
									</div>
									<button type="submit"
										class="btn btn-outline-warning btn-success mb-2 text-center d-grid gap-2 col-6 mx-auto">Login</button>
								</form>
								<div class="card-footer text-center text-white">
										Don't you have an account? Go to <a href="user-registration" class="btn btn-outline-danger text-white text-decoration-none p-1 m-1 rounded" >Register Page</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- login form end -->
		</div>
	</div>

</body>
</html>