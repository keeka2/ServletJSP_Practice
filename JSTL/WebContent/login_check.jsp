<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL: Expression Language(표현언어)</h1>
	<h2>map구조 또는 List구조 등의 컬렉션 접근을 유용하게 해주는 문법을 가진 표현언어</h2>
	<h2>표현언어가 가지는 기본객체
		-param: 파라미터 값
		-requestScope: 요청객체
		-sessionScope: HttpSession객체
	</h2>
	<h2>${param.id }</h2>
	<h2>${param.pw }</h2>
	<h2>${param.cPage }</h2>
	<h2>${paramValues.phone[0] }-${paramValues.phone[1] }-${paramValues.phone[2] }</h2>
</body>
</html>