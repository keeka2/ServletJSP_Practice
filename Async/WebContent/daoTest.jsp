<%@page import="mybatis.vo.MemVO"%>
<%@page import="mybatis.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemVO vo = MemberDAO.searchId("powersung7");
System.out.println(vo.getM_id());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>