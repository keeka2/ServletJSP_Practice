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
        <form action="emp_search_request.jsp" method="GET">
            <label for="emp_no">ID: </label><input type="text" id="emp_no" name="no"/><br/>
            <input type="button" value="검색" onclick="searchByNo(this.form)"/>
        </form>
    </div>
    
    <script>
    	function searchByNo(frm){
    		var num = frm.no;
    		frm.submit();
    	}
    </script>
</body>
</html>