<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="fuck" value="18"/>
	<ul>
		<c:forEach begin="1" end="10" step="1" var="v1">
			<li>${v1}</li>
		</c:forEach>
	</ul>

	<ul>
		<c:forEach begin="1" end="10" step="1" varStatus="st">
			<li>${st.index}</li>
		</c:forEach>
	</ul>
	
	<ul>
		<c:forEach begin="1" end="${fuck }" step="1" varStatus="st">
			<li>${st.index}</li>
		</c:forEach>
	</ul>
	
	
	
	
	<%
		String[] arr = {"a","b","c","d","e"}; 
		request.setAttribute("arr", arr);
	%>
	<c:set var="pp" value="<%=arr %>"/>
	<ul>
		<c:forEach var="ss" items="${pp }">
			<li>${ss }</li>
		</c:forEach>
	</ul>
	
	<ul>
		<c:forEach var="ss" items="${arr}" varStatus="st">
			<li>${ss }</li>
		</c:forEach>
	</ul>
</body>
</html>