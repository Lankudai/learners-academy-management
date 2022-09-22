<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="sidenav">
	<h3 id="logo">
		ADMINISTRATIVE <br /> LEARNER'S ACADEMY PORTAL
	</h3>
	<c:url var="ClassesLink" value="AdminControllerServlet">
		<c:param name="command" value="CLASSES" />
	</c:url>

	<c:url var="SubjectsLink" value="AdminControllerServlet">
		<c:param name="command" value="SUBJECTS" />
	</c:url>

	<c:url var="TeacherLink" value="AdminControllerServlet">
		<c:param name="command" value="TEACHERS" />
	</c:url>

	<c:url var="StudentsLink" value="AdminControllerServlet">
		<c:param name="command" value="STUDENTS" />
	</c:url>
	
 <c:url var="ClassReportLink" value="AdminControllerServlet">
		<c:param name="command" value="CLASS REPORT" />
	</c:url>

 
 	 
	
	    <a class="bar-item" href="classes list.jsp">Classes</a> 
		<a class="bar-item" href="subjects list.jsp">Subjects</a>
		<a class="bar-item" href="teachers list.jsp">Teachers</a> 
		<a class="bar-item" href="students list.jsp">Students</a> 
		<a class="bar-item" href="class-student.jsp">Class Report</a> 
		<a class="bar-item" href="login.jsp">Log out</a>

</div>