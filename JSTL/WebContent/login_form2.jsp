<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="login_check2.jsp" method="post">
	<label for="input_id">ID:</label>
	<input id="input_id" name="id"/><br/>
	
	<label for="input_pw">PW:</label>
	<input id="input_pw" name="pw"/>
	
	<label for="input_phone1">Phone:</label>
	<select id="input_phone1" name="phone">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="017">017</option>
	</select>
	<label for="input_phone2">-</label>
	<input id="input_phone2" name="phone"/>
	
	<label for="input_phone3">-</label>
	<input id="input_phone3" name="phone"/>
		
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