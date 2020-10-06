<%@page import="data.DataVO"%>
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
	Object obj = request.getAttribute("arrDVO");
	if(obj!=null){
		DataVO[] arr = (DataVO[])obj;
		for(DataVO vo : arr){
			%>
			<h2><%=vo.getName() %>   <%=vo.getAge() %></h2>
			<%
		}
	}
%>
<hr/>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<h1>JSTL for문 연습</h1>
	<c:forEach items="${arrDVO }" var="vo"> <%-- for(DataVO vo : arr)  --%>
		<h2>${vo.name }, ${vo.age }</h2>
	</c:forEach>
</body>
</html>