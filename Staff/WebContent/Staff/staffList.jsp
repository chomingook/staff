<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>

<%@ page import="service.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>staff List</h1>
<% 
	StaffDao staffDao = new StaffDao();
	int totalRowCount = staffDao.selectTotalstaffCount();

%>
	전체행의 수 : <%=totalRowCount %>



<table border="1">
	<tr>
		<th>name</th>
		<th>sn</th>
		<th>schoolno</th>
		<th>religionno</th>
		<th>graduateday</th>
	</tr>
<%
		


%>

	<tr>
		<td></td>
	
	</tr>




</table>




</body>
</html>