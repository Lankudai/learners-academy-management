<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subjects List</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background3.jpg');">
	<div id="page">
		<jsp:include page="left list.jsp" />


		<div id="wrapper">

			<div id="header">
				<h3>Subjects</h3>
			</div>
		</div>


		<div id="container">

			<div id="content">

				<table>

					<tr>
						<th>id</th>
						<th>Name</th>
						<th>Shortcut</th>
						

					</tr>

					<c:forEach var="tempsubjects" items="${SUBJECTS_LIST }">
						<tr>
							<td>${tempStudent.id}</td>
							<td>${tempSubject.name}</td>
							<td>${tempSubject.shortcut}</td>
							

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
		String qry="select * from subjects";
		rs=st.executeQuery(qry);
		while(rs.next())
		{
			%>
			<table>
			
			<br>
			<th><%=rs.getString(1) %></th>
			<th><%=rs.getString(2) %></th>
			<th><%=rs.getString(3) %></th>
			
		   
		<br/>
			
			</table>
<% 
	}
	}
	catch(Exception ex){}
	%>
	

</body>
</html>