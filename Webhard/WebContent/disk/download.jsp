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
		
		BufferedOutputStream bos = null;
		ServletOutputStream sos = null; //다운로드 하는것은 jsp입장에서는 응답을 하는 것
		//접속자 pc로 다운로드를 시켜야 하기 때문에 response를 통해 스트림을 생성해야 한다.
		//그것이 바로 ServletOutputStream이다.
		
		try{
			//접속자 화면에 다운로드 창을 보여줌
			response.setContentType("application/x-msdownload");
			response.setHeader("Content-Disposition","attachment;filename="+new String(fname.getBytes(),"8859_1"));
			
			out.clear();
			out = pageContext.pushBody();
			//다운로드할 file과 연결되는 스트림 생성
			fis = new FileInputStream(f);
			bis = new BufferedInputStream(fis);
			
			//response를 통해 이미 out이라는 생성된 스트림이 존재하기 때문에 오류가 발생
			//그것을 잠깐 지워줘야 한다
			
			sos = response.getOutputStream();
			bos = new BufferedOutputStream(sos);
			
			while((size = bis.read(buf)) != -1 ){
				bos.write(buf, 0, size);
				bos.flush();
			}//반복문의 끝
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(fis != null){fis.close();}
				if(bis != null){bis.close();}
				if(sos != null){sos.close();}
				if(bos != null){bos.close();}
				
			}catch(Exception e){
				
			}
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