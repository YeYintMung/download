<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Upload</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<div style="float: left;">
		<h2>Upload Profile</h2>
	</div>
	
	<div style="float: right;">
		<a href="${pageContext.request.contextPath}/" style="font-size: 1.17em;">Home</a> &nbsp;
		<a href="${pageContext.request.contextPath}/search" style="font-size: 1.17em;">Search</a>
	</div>
    <form:form
  action="${pageContext.request.contextPath}/article/uploadFiles" method="post"
  modelAttribute="filesUploadForm" enctype="multipart/form-data">
  <br>
  <br>
  <form:input type="hidden" path="empID" value="${f:h(empid)}" />
  <h4>Employee ID : ${f:h(empid)}</h4><br><br>
  	<div>
  		<img id="blah" style="width: 500px;height: 200px;" src="" alt="your image" />
  	</div>
    <table>
    <tr>
      <th width="35%">File</th>
      <td width="65%">
        <form:input type="file" path="fileUploadForms[0].file" />
        <form:errors path="fileUploadForms[0].file" />
      </td>
    </tr>
  </table>
  <table>
    <tr>
      <th width="35%">Image</th>
      <td width="65%">
        <form:input type="file" path="fileUploadForms[1].file" id="imgInp" />
        <form:errors path="fileUploadForms[1].file" />
      </td>
    </tr>
  </table>
  <div>
    <form:button>Upload</form:button>
  </div>
</form:form>
</body>
<script>
function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    
	    reader.onload = function(e) {
	      $('#blah').attr('src', e.target.result);
	    }
	    
	    reader.readAsDataURL(input.files[0]); // convert to base64 string
	  }
	}

	$("#imgInp").change(function() {
	  readURL(this);
	});
</script>
</html>