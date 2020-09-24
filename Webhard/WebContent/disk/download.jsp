<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String cPath = request.getParameter("cPath");
	String fname = request.getParameter("f_name");
	
	//위의 값들을 연결하여 절대 경로화시킨다
	String path = application.getRealPath("/members/"+cPath+"/"+fname);
	
	//위의 절대경로를 가지고 File객체를 생성
	File f = new File(path);
	
	//실제 존재여부 확인
	if(f.exists()){
		//2048개를 저장 할 수 있는 바구니를 만들자
		byte[] buf = new byte[2048];
		int size = 0;
		
		//다운로드에 필요한 스트림을 준비하자
		BufferedInputStream bis = null;
		FileInputStream fis = null;
		
		//사용자 pc에 저장하기 위한 스트림
		BufferedOutputStream os = null;
		ServletOutputStream sos = null; //다운로드 하는것은 jsp입장에서는 응답을 하는 것
		//접속자 pc로 다운로드를 시켜야 하기 때문에 response를 통해 스트림을 생성해야 한다.
		//그것이 바로 ServletOutputStream이다.
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>