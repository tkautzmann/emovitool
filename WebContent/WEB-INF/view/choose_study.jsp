<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
		<title>Emovitool</title>
	</head>
	<body>
	
		<div class="menu">
		
			<c:url var="logoutUrl" value="/logout" />
   			<form class="logout" action="${logoutUrl}" method="post">
     			<input type="submit" value="Log out" />
     			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
   			</form><br />
			
			<h2>Choose the study</h2>
			
			<div class="options">
			
				<c:forEach var="study" items="${studies}">
				    
				    <a href="chooseCoder?id_study=${study.id}">
				    	${study.description}
				    </a>
				    
				</c:forEach>
			
			</div>
		
		</div>
	
	</body>
</html>