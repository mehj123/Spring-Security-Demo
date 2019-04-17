<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %> 


<html>
	<head>
	<title>Learning Demo...</title>
	</head>
	<body> 
		<p>Welcome to learning demo...</p>
		
		<hr>
		<p> User : <security:authentication property="principal.username" /></p>
		<br><br>
		<p> Role: <security:authentication property="principal.authorities" /></p>
		
		<security:authorize access="hasRole('MANAGER')">
			<p><a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>(Only for Managers)</p>
		</security:authorize>
		<security:authorize access="hasRole('ADMIN')">
			<p><a href="${pageContext.request.contextPath}/systems">Admin meet</a>(Only for Admin)</p>
		</security:authorize>
		<p>
			<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
				<input type="submit" value="Logout" />
			</form:form>
		</p>
	</body>
</html>