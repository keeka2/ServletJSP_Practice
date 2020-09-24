<%@page import="data.vo.MemberVO"%>
<%@page import="data.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String m_id = request.getParameter("u_id");
	String m_pw = request.getParameter("u_pw");
	MemberVO mvo = MemberDAO.login(m_id, m_pw);
	System.out.println(m_id+" "+m_pw);
	if(mvo!=null){
		session.setAttribute("member",mvo);
		response.sendRedirect("left.jsp");
	}else{
		response.sendRedirect("left.jsp");
	}
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