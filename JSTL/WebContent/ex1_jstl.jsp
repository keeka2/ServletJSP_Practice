<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
JSTL(JSP Standard Tag Library) - 자바기반 웹환경에서 지원하는 확장된 Tag를 사용 할 수 있도록 제공되는 라이브러리
먼저 JSTL라이브러리를 apache.org의 tomcat프로젝트에서 다운받아 jstl.jar 추가
 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- JSTL변수선언
	int idx = 100;
	 --%>
	 <% int idx = 25; %>
	<c:set var="idx" value="<%=idx %>"/>
	<c:if test="${idx>0}">
		<h1>${idx}</h1>
	</c:if>
</body>
</html>