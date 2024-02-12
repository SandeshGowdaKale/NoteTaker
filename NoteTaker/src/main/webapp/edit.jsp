<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file='all_js_css.jsp'%>

</head>
<body>
	<div class="container">
		<%@include file='navbar.jsp'%>
		<h1>This is Edit Page</h1>

		<%-- <%
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note = (Note) s.get(Note.class, noteId);

			tx.commit();

			s.close();
			Some issue in Update I have To Fix it
		%>  --%>

		<form action="UpdateServlet" method="post">

			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp " placeholder="Enter Here" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter Your content here" class="form-control"
					style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your
					Note</button>
			</div>
		</form>
	</div>
</body>
</html>