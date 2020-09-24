<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	
	String dir = request.getParameter("cPath"); //사용자가 있었던 현재위치
	String fname = request.getParameter("f_name");//생성하고자 하는 폴더명
	String dir_path = dir+"/"+fname;
	
	//절대경로화
	String path = application.getRealPath(dir_path);
	
	//절대경로를 가지고 File객체 생성
	File f = new File(path);
	f.mkdirs();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="exe()">
	<form action="myDisk.jsp" method="post" name="f1">
		<input type="hidden" name="cPath" value="<%=dir%>"/>
	</form>
	
	<script>
		function exe(){
			document.f1.submit(); //현재문서에서 f1이라는 이름을 가진 폼을 서버로 보낸다.
		}
	</script>
</body>
</html>