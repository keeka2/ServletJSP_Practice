<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<article>
    <form action="search.jsp" method="POST">
        <select id="searchType" name="searchType">
            <option value="0">사번</option>
            <option value="1">이름</option>
            <option value="2">직종</option>
        </select>
        <input type="text" id="searchValue" name="searchValue"/>
        <input type="button" value="검색" onclick="exe(this.form)"/>
    </form>
</article>

<script>
    function exe(f){
        var v = f.searchValue;
        if(!v.value || v.value.trim().length==0){
            alert("검색할 단어를 입력히세요");
            v.value="";
            v.focus();
            return;
        }
        f.submit();
    }

</script>
</body>
</html>