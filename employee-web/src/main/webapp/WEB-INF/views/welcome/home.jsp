<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
   <style>
.button {
  background-color: #4CAF50;
  border: none;
  border-radius: 7px;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
   </style>
</head>

<sec:authentication property="principal.account" var="account" />

<body>
	<h2>Employee</h2>
	<br>
    <div id="wrapper">
    	<div style="float: left;">
    		<h3>Hello world!</h3>	
    	</div>
    	<div style="float: right;">
    		<form:form action="${pageContext.request.contextPath}/logout">
                <button type="submit">Logout</button>
            </form:form>
    	</div>
    </div>
    <br>
    <br>
    <br>
    
    <a class="button" href="${pageContext.request.contextPath}/search">Employee <br> Management</a>
</body>
</html>