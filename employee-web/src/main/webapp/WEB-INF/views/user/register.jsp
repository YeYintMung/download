<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<body>
	<div style="float: left;">
		<h2>New Employee</h2>
	</div>
	
	<div style="float: right;">
		<a href="${pageContext.request.contextPath}/" style="font-size: 1.17em;">Home</a> &nbsp;
		<a href="${pageContext.request.contextPath}/search" style="font-size: 1.17em;">Search</a>
	</div>
     <form:form modelAttribute="userForm" method="post" action="${pageContext.request.contextPath}/user/confirm">
     	<table>
     		<tr>
     			<td>
     				<form:label path="empid">Employee ID:</form:label>
        			<form:input path="empid" />
     			</td>
     			<td>
     				<form:label path="depart">Department:</form:label>
        			<form:select path="depart">
  						<form:option value="" label="--Select--" />
  						<form:options items="${CL_DEPARTMENT}" />
					</form:select>
     			</td>
     		</tr>
     		
     		<tr>
     			<td>
     				<form:label path="empname">Employee NAME:</form:label>
        			<form:input path="empname" />
     			</td>
     			<td>
     				<form:label path="joindate">JOIN DATE:</form:label>
        			<form:input path="joindate" />
     			</td>
     		</tr>
     		
     		<tr>
     			<td>
     				<form:label path="dob">DOB:</form:label>
        			<form:input path="dob" />
     			</td>
     			<td>
     				<form:label path="position">Position:</form:label>
        			<form:select path="position">
  						<form:option value="" label="--Select--" />
  						<form:options items="${CL_POSITION}" />
					</form:select>
     			</td>
     		</tr>
     		
     		<tr>
    			<td>
    				<form:label path="gender">Gender:</form:label>
        			<form:radiobutton path="gender" value="Male"/> Male
        			<form:radiobutton path="gender" value="Female"/> Female
    			</td>
    			<td>
     				<form:label path="email">Email:</form:label>
        			<form:input path="email" />
     			</td>
			</tr>
			
			<tr>
    			<td>
    				<form:label path="marstatus">Marital Status:</form:label>
        			<form:radiobutton path="marstatus" value="Single"/> Single
        			<form:radiobutton path="marstatus" value="Married"/> Married
    			</td>
    			<td>
     				<form:label path="phone">Phone No:</form:label>
        			<form:input path="phone" />
     			</td>
			</tr>
			
			<tr>
    			<td>
    				<form:label path="jplevel">Japanese Level:</form:label>
        			<form:select path="jplevel">
  						<form:option value="" label="--Select--" />
  						<form:options items="${CL_JAPANESESKILL}" />
					</form:select>
    			</td>
    			<td>
     				<form:button name="register">Register</form:button>
     			</td>
			</tr>	
     	</table>
    </form:form>
</body>
</html>