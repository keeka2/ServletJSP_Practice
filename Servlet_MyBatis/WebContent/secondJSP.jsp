<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>파라미터 연습</h1>
    <article>
        <form action="param.jsp" method="POST">
            <label for="s_name1">이름1 : </label>
            <input type="text" id="s_name1" name="s_name"/><br/>
            <label for="s_name2">이름2 : </label>
            <input type="text" id="s_name2" name="s_name"/><br/>
            <label for="s_name3">이름3 : </label>
            <input type="text" id="s_name3" name="s_name"/><br/>

            <input type="button" value="보내기" onclick="send()"/>
        </form>
    </article>

    <script>
        function send(){
            //유효성 검사...(생략)
            document.forms[0].submit(); //서버로 전송 - param.jsp로 전송..
        }
    </script>

</body>
</html>