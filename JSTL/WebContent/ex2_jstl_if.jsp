<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ex2_res.jsp" method="post">
	<label for="s_name">ID:</label>
	<input type="text" id="s_name" name="u_name"/><br/>
	
	<input type = "button" value="send" onclick = "sendData(this.form)">
</form>
<script>
function sendData(frm){
	frm.submit();
}
</script>
</body>
</html>