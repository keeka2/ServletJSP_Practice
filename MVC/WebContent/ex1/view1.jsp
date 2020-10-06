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
	//mvc환경은 뷰 페이지로 이동시 forward되므로
	//request에 저장한 값들을 이용할 수 있다
	Object obj = request.getAttribute("msg");
	String msg = null;
	
	if(obj != null){
		msg = (String)obj;
	}
%>
	<h1><%=msg %></h1>
</body>
</html>