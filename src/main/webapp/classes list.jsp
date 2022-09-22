<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Classes</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background3.jpg');">
	<div id="page">
		<jsp:include page="left list.jsp" />


		<div id="wrapper">

			<div id="header">
				<h3>Classes</h3>
			</div>
		</div>


		<div id="container">

			<div id="content">

				<table>

					<tr>
						<th>id</th>
						<th>Section</th>
						<th>Subject</th>
						<th>Teacher</th>
						<th>Time</th>
						

					</tr>

					<c:forEach var="tempClass" items="${CLASSES_LIST }">
						<tr>

							<c:url var="tempLink" value="AdminControllerServlet">
								<c:param name="command" value="ST_LIST" />
								<c:param name="classId" value="${tempClass.id }" />
								<c:param name="section" value="${tempClass.section }" />
								<c:param name="subject" value="${tempClass.subject }" />
							</c:url>
							
							<td>${tempClass.section}</td>
							<td>${tempClass.subject}</td>
							<td>${tempClass.teacher}</td>
							<td>${tempClass.time}</td>
							
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%
	Connection conn=null;
	Statement st=null;
	ResultSet rs=null;
	try
	
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/adminportal","root","root12345");
		st=conn.createStatement();
		String qry="select * from classes";
		rs=st.executeQuery(qry);
		while(rs.next())
		{
			%>
			<table>
			
			<br>
			<th><%=rs.getString(1) %></th>
			<th><%=rs.getString(2) %></th>
			<th><%=rs.getString(3) %></th>
			<th><%=rs.getString(4) %></th>
		    <th><%=rs.getString(5) %></th>
		    <br/>
			
			</table>
<% 
	}
	}
	catch(Exception ex){}
	%>

</body>
</html>