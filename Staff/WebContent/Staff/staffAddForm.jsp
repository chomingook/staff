<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="service.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	SkillDao sDao= new SkillDao();
	SchoolDao cDao = new SchoolDao();
	ReligionDao rDao = new ReligionDao();

%>
	<h1>STAFF정보 등록화면</h1>
	
	<form action="<%=request.getContextPath()%>/Staff/staffAddAction.jsp" method = "post">
	<table border="1">
		<tr>
			<td>이름 : </td>
			<td	colspan="3"><input type = "text" name = "StaffName" id = "StaffName"><td>
			
			<td>주민번호 :</td>
			<td><input type = "text" name = "StaffPw1" id = "StaffPw1"><label>-</label></td>
			<td><input type = "password" name = "StaffPw2" id = "StaffPw2"> </td>
			
			<td>종교 : </td>
			<td>
				<select name = "religion">
			<% 
				ArrayList<Religion> rList = rDao.selectreligion();
				for(int k=0; k<rList.size(); k++){
					Religion religion = rList.get(k);
			%>	
				<option value = "<%=religion.getNo() %>"><%=religion.getName()%></option>
			<% 
				}
			%>
				</select>
			</td>
			
		<tr>
			<td>학력 : </td>
			<td>
			<% 
				ArrayList<School> cList = cDao.selectschool();
				for(int j=0; j<cList.size(); j++){
					School school = cList.get(j);
			%>
			<input type = "checkbox" name = "school" value = "<%=school.getNo()%>" ><label><%=school.getName()%></label>
			<% 
				}
			%>
			</td>
			<td>기술 : </td>
			<td colspan="9">
			<%
			ArrayList<Skill> sList = sDao.selectskill();
			for(int i=0; i<sList.size(); i++){
				Skill skill = sList.get(i);	
				
			%>
			<input type = "checkbox" name = "skill" value = "<%=skill.getNo()%>"><label><%=skill.getName() %></label>
			<%
			}
			%>
			</td>
		</tr>
		
		<tr>
			<td>졸업일 : </td>
			<td colspan="9">
				<input type = "date" name = "StaffDate" value = "StaffDate">	
			</td>		
		</tr>
		<tr>
			<td colspan="10"><input type = "submit" value = "등록"><input type = "reset" value = "초기화"></td>
			
		</tr>
		</table>
	</form>
	
</body>
</html>