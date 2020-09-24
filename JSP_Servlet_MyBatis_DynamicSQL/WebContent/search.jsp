<%@page import="data.vo.EmpVO"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>검색 결과</h1>
    <table border="1" style="width: 250px">
        <colgroup>
            <col width="80px"/>
            <col width="*"/>
            <col width="100px"/>
        </colgroup>
        <thead>
            <tr>
                <th>사번</th>
                <th>이름</th>
                <th>직종</th>
            </tr>
        </thead>
        <tbody>
            <%
            request.setCharacterEncoding("utf-8");
            
            String value = request.getParameter("searchValue");
            String type = request.getParameter("searchType");
            
            List<EmpVO> list = EmpDAO.search(type, value);
            
            if(list != null && list.size()>0){
            	for(EmpVO vo : list){
            %>
            <tr>
            	<td><%=vo.getEmpno() %></td>
            	<td><%=vo.getEname() %></td>
            	<td><%=vo.getJob() %></td>
            </tr>
            <%
            	}
            }else{
            %>
            	<tr>
            		<td colspan="3">no result</td>
            	</tr>
            <%} %>
        </tbody>
    </table>
</body>
</html>