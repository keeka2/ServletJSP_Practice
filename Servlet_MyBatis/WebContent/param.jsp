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
	//파라미터 받기 전 한글처리 - JSP에서 request는 내장객체(이미 준비되어 있는 객체)
	//request, response, out(PrintWriter), session(HttpSession), ... <-내장 객체
	request.setCharacterEncoding("utf-8");
	
	//파라미터 받기
	String[] names = request.getParameterValues("s_name");
	for(String name : names){
		//out.println("<h2>"+name+"</h2>");
	%>
	<h2><%= name %></h2>
	<%
	}
	
	
%>
</body>
</html>