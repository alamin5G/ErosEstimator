<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/resources/component/jstl.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Spring Note</title>
<%@ include file="/WEB-INF/resources/component/links_file.jsp"%>
</head>
<body style="background-color: #f5f1f5">
	<%@ include file="/WEB-INF/resources/component/nav-bar.jsp"%>
	<div class="container-fluid m-0 p-0">
 		<div class="bg-image" 
     		style="background-image: url('<c:url value="/resources/img/heart.jpg" />');
            height: 100vh">
            <div class="container">
	           	<div class="row">
					<div class="col-md-12">
						<div class="card bg-transparent">
							<div class="card-header text-center text-white">
								<h2>All of Your Matching Details</h2>
							</div>
							<c:if test="${not empty msg }" >
								<h4 class="text-white bg-danger text-center">${msg }</h4>
							<c:remove var="msg"/>
							</c:if>
							
							<div class="card-body bg-transparent">
								<table class="table table-hover">
									<thead>
										<tr class="table-info">
											<th scope="col">ID</th>
											<th scope="col">Your Name</th>
											<th scope="col">Crush Name</th>
											<th scope="col">User ID</th>
											<th scope="col">Eros Type</th>
											<th scope="col">Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${milanorList }" var="mList">
											<tr>
												<th scope="row">${mList.id }</th>
												<td>${mList.yourName }</td>
												<td>${mList.matchName }</td>
												<td>${milanorUserID }</td>
												<td>${mList.matchResult }</td>
												<td><a
													href="${pageContext.request.contextPath}/user/deleteingMatch/?id=${mList.id }"
													class="btn btn-sm bg-danger text-white mt-auto">Delete</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>