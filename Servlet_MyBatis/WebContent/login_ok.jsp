<%@page import="test2.dao.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="test2.vo.UserVO"%>
<%@page import="test.vo.MyBatisConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
UserVO vo = UserDAO.check_password(id, pw);
if(vo!=null){
	session.setAttribute("uvo", vo);
}
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