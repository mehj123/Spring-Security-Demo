<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<html>
	<title>Learning Demo...</title>
	<body> 
		<p>Welcome to learning demo...</p>
		<p>
			<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
				<input type="submit" value="Logout" />
			</form:form>
		</p>
	</body>
</html>