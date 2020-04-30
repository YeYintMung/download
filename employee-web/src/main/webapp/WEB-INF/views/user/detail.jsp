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

<sec:authentication property="principal.account" var="account" />

<body>
	<div style="float: left;">
		<h2>Detail Employee</h2>
	</div>
	
	<div style="float: right;">
		<a href="${pageContext.request.contextPath}/" style="font-size: 1.17em;">Home</a> &nbsp;
		<a href="${pageContext.request.contextPath}/search" style="font-size: 1.17em;">Search</a>
	</div>
	
	<div id="wrapper">
        <table>
            <tr>
                <th>Employee ID</th>
                <td>${f:h(employee.empid)}</td>
                <th>Department</th>
                <td>${f:h(employee.depname)}</td>
            </tr>
            <tr>
                <th>Employee Name</th>
                <td>${f:h(employee.empname)}</td>
                <th>Join Date</th>
                <td>${f:h(employee.joindate)}</td>
            </tr>
            <tr>
                <th>DOB</th>
                <td>${f:h(employee.dob)}</td>
                <th>Position</th>
                <td>${f:h(employee.posname)}</td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>${f:h(employee.gender)}</td>
                <th>Email</th>
                <td>${f:h(employee.email)}</td>
            </tr>
            <tr>
                <th>Marital Status</th>
                <td>${f:h(employee.marstatus)}</td>
                <th>Phone no.</th>
                <td>${f:h(employee.phone)}</td>
            </tr>
            <tr>
                <th>Japanese Level</th>
                <td>${f:h(employee.jplevelname)}</td>
                <th></th>
                <td>
                	<a class="button" href="${pageContext.request.contextPath}/search">Back</a>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>