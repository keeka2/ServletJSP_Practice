<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="box">
        <form action="register_request.jsp" method="POST">
        	<label for="s_name">NAME: </label><input type="text" id="s_name" name="name"/><br/>
        	<label for="s_email">EMAIL: </label><input type="text" id="s_email" name="email"/><br/>
            <label for="s_id">ID: </label><input type="text" id="s_id" name="id"/><br/>
            <label for="s_pw">PW: </label><input type="password" id="s_pw" name="pw"/><br/>
            <input type="button" value="LOGIN" onclick="register(this.form)"/>

        </form>
        <div class="box">

        </div>

        <script>
            function register(frm){
            	var name = frm.name;
            	var email = frm.email;
                var id = frm.id;
                var pw = frm.pw; //이건 name으로 받아옴
                

                if(!id.value.trim() || !pw.value.trim() || !email.value.trim() || !name.value.trim()){
                    alert("제대로 입력해라");
                    name.value="";
                    email.value="";
                    id.value="";
                    pw.value="";
                    return;
                }
                frm.submit();
            }
        </script>

    </div>
</body>
</html>