<%@page import="test2.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//session으로부터 "uvo"라는 이름으로 저장된 값을 얻어낸다.
//session에는 자바에서 인정하는 모든 객체는 저장이 가능하므로
//캐스팅 느림
Object obj = session.getAttribute("uvo");
if(obj==null){%>
    <div class="box">
        <form action="login_ok.jsp" method="POST">
            <label for="s_id">ID: </label><input type="text" id="s_id" name="id"/><br/>
            <label for="s_pw">PW: </label><input type="password" id="s_pw" name="pw"/><br/>
            <input type="button" value="LOGIN" onclick="login(this.form)"/>
        </form>
        <form action="register.jsp" method="POST">
        <input type="button" value="REGISTER" onclick="register(this.form)"/>
        </form>
    </div>
  <% }else{ 
  
  		UserVO mvo = (UserVO)obj;
  %>
	
        <div class="box">
        	<pre><%=mvo.getName() %></pre>

        </div>
	<% } %>
        <script>
            function login(frm){
                var id = document.getElementById("s_id");
                var pw = frm.pw; //이건 name으로 받아옴
                

                if(!id.value.trim() || !pw.value.trim()){
                    alert("제대로 입력해라");
                    id.value="";
                    pw.value="";
                    id.focus();
                    return;
                }
                frm.submit();
            }
            
            function register(frm){
            	frm.submit();
            }
        </script>

    </div>
</body>
</html>