<%@page import="mybatis.vo.MemVO"%>
<%@page import="mybatis.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id = request.getParameter("m_id");
System.out.println("m_id: "+id);
MemVO vo = MemberDAO.searchId(id);
if(vo!=null){

%>
{"res":"사용 불가능"}
<%
}else{

%>

{"res":"사용 가능"}
<%} %>