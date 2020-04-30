<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
     <style>
.button {
  background-color: #4CAF50;
  border: none;
  border-radius: 7px;
  color: white;
  padding: 2px 5px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
   </style>
</head>
<body>
	<h2>New Employee</h2>
	<br>
     <form:form modelAttribute="userForm" action="${pageContext.request.contextPath}/user/insert">
     	<form:hidden path="empid" /> 
     	<form:hidden path="depart" /> 
     	<form:hidden path="empname" /> 
     	<form:hidden path="joindate" /> 
     	<form:hidden path="dob" /> 
     	<form:hidden path="position" /> 
     	<form:hidden path="gender" /> 
     	<form:hidden path="email" /> 
     	<form:hidden path="marstatus" /> 
     	<form:hidden path="phone" /> 
     	<form:hidden path="jplevel" /> 
     	<table>
     		<tr>
     			<td>
     				<form:label path="empid">Employee ID:</form:label>
     				${f:h(userForm.empid)}
     			</td>
     			<td>
     				<form:label path="depart">Department:</form:label>
     				${f:h(userForm.depart)}
     			</td>
     		</tr>
     		
     		<tr>
     			<td>
     				<form:label path="empname">Employee NAME:</form:label>
     				${f:h(userForm.empname)}
     			</td>
     			<td>
     				<form:label path="joindate">JOIN DATE:</form:label>
     				${f:h(userForm.joindate)}
     			</td>
     		</tr>
     		
     		<tr>
     			<td>
     				<form:label path="dob">DOB:</form:label>
     				${f:h(userForm.dob)}
     			</td>
     			<td>
     				<form:label path="position">Position:</form:label>
     				${f:h(userForm.position)}
     			</td>
     		</tr>
     		
     		<tr>
    			<td>
    				<form:label path="gender">Gender:</form:label>
    				${f:h(userForm.gender)}
    			</td>
    			<td>
     				<form:label path="email">Email:</form:label>
     				${f:h(userForm.email)}
     			</td>
			</tr>
			
			<tr>
    			<td>
    				<form:label path="marstatus">Marital Status:</form:label>
    				${f:h(userForm.marstatus)}
    			</td>
    			<td>
     				<form:label path="phone">Phone No:</form:label>
     				${f:h(userForm.phone)}
     			</td>
			</tr>
			
			<tr>
    			<td>
    				<form:label path="jplevel">Japanese Level:</form:label>
    				${f:h(userForm.jplevel)}
    			</td>
    			<td>
    				<a class="button" href="${pageContext.request.contextPath}/user/create?redo">Back</a>
     				&nbsp;&nbsp;
  					<input type="submit" value="Create" /> 
     			</td>
			</tr>	
     	</table>
    </form:form>
</body>
</html>