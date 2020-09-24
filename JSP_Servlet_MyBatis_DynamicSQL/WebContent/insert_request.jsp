<%@page import="data.dao.EmpDAO"%>
<%@page import="data.vo.EmpVO"%>
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

	String s_no = request.getParameter("s_no");
	String s_name = request.getParameter("s_name");
	String s_job = request.getParameter("s_job");
	String s_sal = request.getParameter("s_sal");
	
	EmpVO vo = new EmpVO();
	vo.setEmpno(s_no);
	vo.setEname(s_no);
	vo.setJob(s_job);
	vo.setSal(s_sal);
	
	boolean ch = EmpDAO.add(vo);
	if(ch){
		out.println("완료");
	}else{
		out.println(" tlfvo");
	}
	

	
%>
</body>
</html>