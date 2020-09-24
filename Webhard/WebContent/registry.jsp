<%@page import="java.io.File"%>
<%@page import="data.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
private String makeString(String[] arr){
	StringBuffer sb = new StringBuffer();
	for(String a : arr){
		sb.append(a);
	}
	return sb.toString();
}
%>
<%
String m_id = request.getParameter("id");

String m_pw = request.getParameter("pw");

String m_name = request.getParameter("name");

String m_addr = request.getParameter("addr");

String[] a_phone = request.getParameterValues("phone");

String m_email = request.getParameter("email");

String m_phone = makeString(a_phone);

boolean check = MemberDAO.register(m_id,m_pw,m_name,m_addr,m_phone,m_email);
//chk기 true일때만 특정 위치에 가입한 사용자 id와 같은 이름으로 폴더를 생성
//folder는 directory와 같은 것, 이것을 만들기 위해 먼저 java.io.File객체를 먼저 생성
//그리고 그 안에 메서드들 중 mkdir() 또는 mkdirs()로 폴더를 생성할 수 있다.
if(check){
	//현재 서버(application)의 members라는 폴더의 정확한 절대경로 (c://..)
	String path = application.getRealPath("/members/"+m_id);
	System.out.println(path);
	
	//폴더를 생성 할 수 있는 객체 즉 파일객체를 생성한다.
	File f = new File(path);
	if(!f.exists()){
		f.mkdirs();
	%>
	<script>
	parent.location.href="index.jsp?msg=1";
	</script>
	<%
	}else{
	%>
	<script>
	parent.location.href="index.jsp?msg=0";
	</script>
	<%
	}
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