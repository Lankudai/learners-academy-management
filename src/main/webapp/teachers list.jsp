<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Teachers List</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background3.jpg');">
	<div id="page">
		<jsp:include page="left list.jsp"/>


		<div id="wrapper">

			<div id="header">
				<h3>Teachers</h3>
			</div>
		</div>


		<div id="container">

			<div id="content">

				<table>

					<tr>
						<th>id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>age</th>

					</tr>

					<c:forEach var="tempstudents" items="${TEACHERS_LIST }">
						<tr>
							<td>${tempStudent.id}</td>
							<td>${tempStudent.fname}</td>
							<td>${tempStudent.lname}</td>
							<td>${tempStudent.age}</td>



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
		String qry="select * from teachers";
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
		   
		<br/>
			
			</table>
<% 
	}
	}
	catch(Exception ex){}
	%>
	

</body>
</html>