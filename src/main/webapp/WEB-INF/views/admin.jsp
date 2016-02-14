<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin page</title>
</head>
<body>
	Dear
	<strong>${user}</strong>, Welcome to Admin Page.
	<a href="<c:url value="/logout" />">Logout</a>

	<c:url var="uploadUrl" value="/admin/upload" />
	<form method="POST" enctype="multipart/form-data" action="${uploadUrl}?${_csrf.parameterName}=${_csrf.token}"">
		File to upload: 
		<input type="file" name="file">
		<br /> 
		 <br /> <input type="submit"
			value="Upload"> Press here to upload the file!
	</form>
</body>
</html>