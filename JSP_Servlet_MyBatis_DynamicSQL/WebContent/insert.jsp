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
        <form action="insert_request.jsp" method="POST">
            <label for="s_no">수정할 사원의 사번: </label><input type="text" id="s_no" name="s_no"/><br/>
            
            <label for="s_name">이름: </label><input type="text" id="s_name" name="s_name"/><br/>
            
            <label for="s_job">직종: </label><input type="text" id="s_job" name="s_job"/><br/>
            
            <label for="s_sal">직종: </label><input type="text" id="s_sal" name="s_sal"/><br/>
            
            <input type="button" value="ADD" onclick="exe(this.form)"/>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script>
    	function exe(f){
    		//jQuery
    		var no = $("#s_no");
    		
    		if(no.val().trim().length == 0){
    			alert("검색 할 사번을 입력하세요");
    			no.val("");
    			no.focus();
    			return;
    		}
    		f.submit();
    		//예외 처리 ... 하고
    	}
    </script>
</body>
</html>