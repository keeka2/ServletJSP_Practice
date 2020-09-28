<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.success{
	color:#00f;
	}
	.fail{
	colot:#f00;
	}
</style>
</head>
<body>
	<h1>비동기 아이디 체크</h1>
	<article>
		<form>
			<label for="u_id">아이디:</label>
			<input type="text" id="u_id"/>
			<span id="str">사용가능</span>
		</form>
	</article>
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script>
		$(function(){
			$("#u_id").on("keyup",function(){
				//키를 누를 때 마다 이벤트 발생
				var id = $(this).val();
				console.log(id);
				if(id.length > 3){
					$.ajax({
						url:"idCheck.jsp",
						data:"m_id="+id,
						type:"post",
						dataType:"json"
					}).done(function(data){
						//요청 성공시
						//받은 정보를 현재 문서로
						$("#str").text(data.res);
					});
				}else{
					$("#str").text("사용 불가");
				}
			});
		});
	</script>
</body>
</html>