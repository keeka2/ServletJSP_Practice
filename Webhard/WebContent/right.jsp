<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin: 0;
		padding: 0;
	}
	
	header{
		height: 44px;
		margin: 0;
		background-color: #2e2e2e;
	}
	ul#menu{
		margin: 0;
		padding: 0;
		list-style: none;
		font: 15px Sans-serif;
		line-height: 44px;
		text-align: center;
	}
	
	ul#menu>li{
		display: inline-block;
		width: 100px; 
	}
	ul#menu>li>a{
		color: #cdcdcd;
		text-decoration: none;
	}
	ul#menu>li>a:hover{
		color: #fff;
	}
	
	#apple{
		text-indent: -9999px;
		background-image: url(images/apple.svg);
		position: absolute;
		top: 0;
		background-size: 16px 44px;
		background-repeat: no-repeat;
		background-position: center center;
		
		margin-left: -24px;
		width: 48px;
	}
</style>
</head>
<body>
<%
	//msg를 HTML 히든 태그에 숨기고 JS의 getE.B.id로 받아옴
	String msg = request.getParameter("msg");
	
%>
	<header>
		<ul id="menu">
			<li><a href="" id="apple">&nbsp;</a></li>
			<li><a href="">Mac</a></li>
			<li><a href="">iPad</a></li>
			<li><a href="">iPhone</a></li>
			<li><a href="">Watch</a></li>
			<li><a href="">TV</a></li>
			<li><a href="">Music</a></li>
			<li><a href="">Support</a></li>
		</ul>
	</header>
	
	<input type="hidden" id="msg" value="<%=msg%>"/>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script>
		//jQuery가 무조건 시작하는 부분
		$(function(){
			//문서 준비되면 무조건 수행하는 곳
			//현재 문서에서 id가 msg인 요소의 값을 얻어낸다.
			//그 값을 변수 res에 저장
			var res = $("#msg").val(); //== document.getElementByd("msg").value();
			
			if(res==1){
				alert("축하..가입..완료");
			}else if(res==0){
				alert("슬픔..가입..실패");
			}
		});
	</script>
		
</body>
</html>