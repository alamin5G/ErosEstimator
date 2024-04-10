<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/resources/component/jstl.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Match Result</title>
<%@ include file="/WEB-INF/resources/component/links_file.jsp" %>
</head>
<body style="background-color:#f5f1f5">
	<%@ include file="/WEB-INF/resources/component/nav-bar.jsp"%>
	 <div class="container-fluid m-0 p-0">
 		<div class="bg-image" 
     		style="background-image: url('<c:url value="/resources/img/heart-4.jpg" />');
            height: 100vh">
            
           <div class="text-center text-white">
           		<h2>Your Name:${match.yourName }</h2>
				<h3>Your Crush: ${match.matchName }</h3>
				<br>
				<h4>Eros type is: ${match.matchResult }</h4>
           </div>
            
		</div>
	</div>
</body>
</html>