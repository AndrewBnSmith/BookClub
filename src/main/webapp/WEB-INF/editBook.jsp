<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Book Edit</title>
</head>
<body>
	<div class="container">
		<h1>Change your Entry</h1>
		<a href="/dashboard">Back to the shelves</a>
		<form:form action="/books/edit/${bookObj.id} " method="post" modelAttribute="bookObj">
			<input type="hidden" name="_method" value="put">
			<form:input type="hidden" path="creator" value="${user_id}" />
			<p>
					Title:
					<form:input path="title" />
					<form:errors path="title" />
				</p>
				<p>
					Author:
					<form:input path="author" />
					<form:errors path="author" />
				</p>
				<p>
					Thoughts:
					<form:input path="thought" />
					<form:errors path="thought" />
				</p>				
			<button>Update</button>
		</form:form>
	</div>
</body>
</html>