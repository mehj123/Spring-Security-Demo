<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %> 


<html>
	<head>
	<title>Access Denied...</title>
	</head>
	<body> 
		<h2> Access Denied!!!!</h2>
		<p>You are not authorized to access this page</p>
		<hr>
		<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
	</body>
</html>