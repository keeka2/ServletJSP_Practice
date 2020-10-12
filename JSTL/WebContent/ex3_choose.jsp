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
<c:choose>
	<c:when test="${param.money>=1000 }">
		사과, 배, 대봉 중 하나 선택
	</c:when>
	<c:when test="${param.money>=700 }">
		사과, 배 중 하나 선택
	</c:when>
	<c:when test="${param.money>=500 }">
		사과 선택
	</c:when>
	<c:otherwise>
		선택할 수 있는 과일이 없습니다.
	</c:otherwise>
</c:choose>

</body>
</html>