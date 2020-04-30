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
		
		.pagination {
  			display: inline-block;
  			padding-left: 0;
  			margin: 20px 0;
  			border-radius: 4px;
		}

		.pagination li {
    display: inline;
}

.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  margin-left: -1px;
  line-height: 1.428571429;
  text-decoration: none;
  background-color: #ffffff;
  border: 1px solid #dddddd;
}

.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-bottom-left-radius: 4px;
  border-top-left-radius: 4px;
}

.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}

.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  background-color: #eeeeee;
}

.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
.pagination > .active > span:focus {
  z-index: 2;
  color: #ffffff;
  cursor: default;
  background-color: #428bca;
  border-color: #428bca;
}

.pagination > .disabled > span,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #999999;
  cursor: not-allowed;
  background-color: #ffffff;
  border-color: #dddddd;
}
   </style>
</head>
<body>
	<div style="float: left;">
		<h2>Search Employee</h2>
	</div>
	
	<div style="float: right;">
		<h3>
    		<a href="${pageContext.request.contextPath}/">Home</a>
		</h3>
	</div>
	<br>
	<br>
	<br>
    <div id="wrapper">
        <a class="button" href="${pageContext.request.contextPath}/user/create">Register</a>
    </div>
    <br>
    <br>
    <div id="criteriaPart">
  		<form:form action="${pageContext.request.contextPath}/account/list" method="get" modelAttribute="SearchCriteriaForm">
    		<form:input path="srcData" />
    		<form:button>Search</form:button>
    		<br>
  		</form:form>
	</div>
	<br>
			<div id="result">
		<c:if test="${page != null && page.totalPages != 0}">
			<span>Total Number of Employees: ${page.totalElements}</span>
  			<table class="maintable">
    			<thead>
      				<tr>
        				<th>EmployeeID</th>
        				<th>Name</th>
        				<th>Join Date</th>
        				<th>Department</th>
        				<th>Position</th>
        				<th>Email</th>
        				<th>Ph No.</th>
        				<th>Action</th>
      				</tr>
    			</thead>
    		<c:forEach var="article" items="${page.content}" varStatus="rowStatus">
      			<tr>
        			<td>
        				<a href="${pageContext.request.contextPath}/user/detail?empid=${f:u(article.empid)}">${f:h(article.empid)}</a>
        			</td>
        			<td>${f:h(article.empname)}</td>
        			<td>
        				${f:h(article.joindate)}
        			</td>
        			<td>${f:h(article.depname)}</td>
        			<td>${f:h(article.posname)}</td>
        			<td>${f:h(article.email)}</td>
        			<td>${f:h(article.phone)}</td>
        			<td>
        				<a href="${pageContext.request.contextPath}/article/upload?empid=${f:u(article.empid)}">Upload</a>
        				<a href="${pageContext.request.contextPath}/user/download?empid=${f:u(article.empid)}">Download</a>
        				<a href="${pageContext.request.contextPath}/user/delete?empid=${f:u(article.empid)}">Delete</a>
        			</td>
      			</tr>
    		</c:forEach>
  			</table>
  			<div class="paginationPart">
  				<t:pagination page="${page}"
    				outerElementClass="pagination"
    				maxDisplayCount="5"  />
  			</div>
		</c:if>
	</div>
</body>
</html>