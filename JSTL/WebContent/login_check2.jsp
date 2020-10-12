<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String input_id = request.getParameter("id");
	session.setAttribute("id", input_id);
	
%>
	</h2>
	<h2>${param.id }</h2>
	<h2>${param.pw }</h2>
	<h2>${param.cPage }</h2>
	<h2>${paramValues.phone[0] }-${paramValues.phone[1] }-${paramValues.phone[2] }</h2>
	<input type="button" value="다음페이지" 
		onclick="javascript: location.href='res.jsp?pw=${param.pw}'"/>
		
</body>
</html>