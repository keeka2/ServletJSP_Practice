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
	
	boolean ins = MemoDAO.add(writer,content);
	if(ins){
		%>
		alert("추가됨");
		<%
		response.sendRedirect("memoList.jsp");
	}else{
		%>
		alert("실패");
		<%
		response.sendRedirect("memoAdd.jsp");
	}
%>
</body>
</html>