<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="service.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 


	request.setCharacterEncoding("euc-kr");
	String StaffName = request.getParameter("StaffName");
	System.out.println(StaffName + "<--- StaffName ��");
	
	String StaffPw1 = request.getParameter("StaffPw1");
	System.out.println(StaffPw1 + "<--- StaffPw1 ��");
	
	String StaffPw2 = request.getParameter("StaffPw2");
	System.out.println(StaffPw2 + "<--- StaffPw2 ��");
	
	String StaffSn = StaffPw1 +"-"+ StaffPw2;
	System.out.println(StaffSn + "<--- sn ��");
	
	int religionNo = (Integer.parseInt(request.getParameter("religion")));
	System.out.println(religionNo + "<--- religion ��");

	
	int schoolNo = (Integer.parseInt(request.getParameter("school")));
	System.out.println(schoolNo + "<--- school ��");

	
	String [] skillNo = (request.getParameterValues("skill"));
	System.out.println(skillNo + "<--- skill[] ��");


	String StaffDate = request.getParameter("StaffDate");
	System.out.println(StaffDate + "<--- StaffDate ��");

	Staff staff = new Staff();
	staff.setName(StaffName);
	staff.setSn(StaffSn);
	staff.setReligionNo(religionNo);
	staff.setSchoolNo(schoolNo);
	staff.setGraduateday(StaffDate);
	
	StaffDao staffDao = new StaffDao();
	staffDao.insertStaff(staff);
	
	
	
	response.sendRedirect(request.getContextPath()+ "/Staff/staffList.jsp");
	
	



%>
</body>
</html>