<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<body>
	<h2>Success</h2>
     <form:form modelAttribute="userForm" action="${pageContext.request.contextPath}/user/create">
     	<form:button name="register">Finish</form:button>
    </form:form>
</body>
</html>