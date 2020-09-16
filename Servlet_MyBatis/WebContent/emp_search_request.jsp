<%@page import="test.vo.EmpVO"%>
<%@page import="src.test.dao.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <table border="1">
	<th>사번</th>
	<th>이름</th>
	<th>직종</th>
<%
String input = request.getParameter("no");
EmpVO evo= EmpDAO.search_empno(input);
if(evo!=null){ %>

	<tr>
	    <td><%= evo.getEmpno() %></td>
	    <td><%= evo.getEname() %></td>
	    <td><%= evo.getJob() %></td>
	</tr>

    
<% }else{ %>
	<tr>
		<td colspan="3">그런 사람 없습니다</td>
	</tr>	
<% } %>

    </table>
</body>
</html>