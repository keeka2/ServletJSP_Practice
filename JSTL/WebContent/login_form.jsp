<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="login_check.jsp" method="post">
	<label for="input_id">ID:</label>
	<input id="input_id" name="id"/><br/>
	
	<label for="input_pw">PW:</label>
	<input id="input_pw" name="pw"/>
	
	<input type="hidden" name="cPage" value="2"/>
	<input type = "button" value="Login" onclick = "sendData(this.form)">
</form>
<script type="text/javascript">
	function sendData(frm){
		var input_id = document.getElementById("input_id");
		var input_pw = frm.input_pw;
		if(input_id.value.trim().length == 0){
			alert("아이디 입력");
			input_id.value="";
			input_id.focus();
		}
		
		if(input_pw.value.length == 0){
			alert("아이디 입력");
			input_pw.value="";
			input_pw.focus();
		}
		
		frm.submit();
	}
</script>
</body>
</html>