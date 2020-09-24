<%@page import="data.dao.MemoDAO"%>
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
String writer = request.getParameter("writer");
String content = request.getParameter("content");
String idx = (String)session.getAttribute("idx");

if(MemoDAO.update(idx, writer, content)){
	session.invalidate();
	response.sendRedirect("memoList.jsp");
}else{
	session.invalidate();
	response.sendRedirect("memoList.jsp");
}
%>
</body>
</html>