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
        <form action="update_emp_request.jsp" method="POST">
            <label for="s_no">수정할 사원의 사번: </label><input type="text" id="s_no" name="s_no"/><br/>
            
            <label for="s_name">이름: </label><input type="text" id="s_name" name="s_name"/><br/>
            
            <label for="s_job">직종: </label><input type="text" id="s_job" name="s_job"/><br/>
            
            <label for="s_sal">직종: </label><input type="text" id="s_sal" name="s_sal"/><br/>
            
            <input type="button" value="MODIFY" onclick="exe(this.form)"/>
        </form>
    </div>
    
    <script>
    	function exe(f){
    		var no = f.s_no;
    		//예외 처리 ... 하고
    		f.submit();
    	}
    </script>
</body>
</html>