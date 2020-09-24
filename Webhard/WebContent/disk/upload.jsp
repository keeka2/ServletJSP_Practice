<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파일 저장할 곳
	String dir = (String)session.getAttribute("cPath");
	String path = application.getRealPath("/members/"+dir);
	MultipartRequest mr = new MultipartRequest(request, path, 1024*1024*5, new DefaultFileRenamePolicy());
	//String dir = mr.getParameter("dir");
	
	File f = mr.getFile("upload");
	String new_name = f.getName();
	
	String ori_name = mr.getOriginalFileName("upload");
	
	if(f!=null){
		System.out.println("현재파일명: "+new_name);
		System.out.println("변경전 파일명: "+ori_name);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="exe()">
	<form action="myDisk.jsp" method="post" name="f1">
		<input type="hidden" name="cPath" value="<%=dir %>"/>
	</form>
	
	<script>
		function exe(){
			document.f1.submit(); //현재문서에서 f1이라는 이름을 가진 폼을 서버로 보낸다.
		}
	</script>
</body>
</html>