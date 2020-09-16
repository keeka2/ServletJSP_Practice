<%@page import="test2.vo.UserVO"%>
<%@page import="test.vo.MyBatisConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String email = request.getParameter("email");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

UserVO vo = new UserVO();
vo.setName(name);
vo.setEmail(email);
vo.setId(id);
vo.setPw(pw);
MyBatisConnectionFactory.getSqlSession().insert("user.insertUser", vo);
response.sendRedirect("login.jsp");
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