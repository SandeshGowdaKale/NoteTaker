<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Home Page</title>
<%@include file='all_js_css.jsp'%>

</head>
<body>

	<div class="container">
		<%@include file='navbar.jsp'%>
		<br>
		<h1>Please Fill Your Notes Details</h1>
		<br>
		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp " placeholder="Enter Here">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required id="content"
					placeholder="Enter Your content here" class="form-control"
					style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>

	</div>
</body>
</html>