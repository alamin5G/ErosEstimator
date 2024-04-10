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
     		style="background-image: url('<c:url value="/resources/img/heart-4.jpg" />');
            height: 100vh">
		
		 	<!-- login form start -->
			<div class="container pt-5 text-center ">
				<div class="row">
					<div class="col-md-6 offset-md-3">
						<div class="card bg-transparent text-white rounded">
							<div class="card-header text-center fs-3">Match Your Eros</div>
								
								<c:if test="${not empty msg}">
									<div class="bg-warning outline-danger rounded text-center p-1">
										<h5>${msg }</h5>
									</div>
									<c:remove var="msg"/>
								</c:if>
								
							<div class="card-body">
								<form action="match-result-page" method="post">
									<div class="mb-3">
										<label for="yourName" class="form-label">Enter your name</label> <input
											type="text" class="form-control" id="yourName" name="yourName"
											placeholder="Enter your full name" required>
									</div>
									<div class="mb-3">
										<label for="matchName" class="form-label">Enter your crush name</label> <input
											type="text" class="form-control" id="matchName" name="matchName"
											placeholder="Enter your crush name" required>
									</div>
		
									<div class="mb-3 form-check">
										<input type="checkbox" class="form-check-input" name="checkbox"
											id="exampleCheck1" required> <label class="form-check-label text-white text-start"
											for="exampleCheck1">Agreed on this is only for fun</label>
									</div>
									<button type="submit"
										class="btn btn-outline-danger btn-warning mb-2 text-center d-grid gap-2 col-6 mx-auto">Calculate Match</button>
								</form>
								<div class="card-footer text-center text-white">
										You can check your  <a href="${pageContext.request.contextPath }/user/matchHistory" class="btn btn-outline-success text-white text-decoration-none p-1 m-1 rounded" >Matching History</a>
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