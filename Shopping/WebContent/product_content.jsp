<%@page import="mybatis.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- useBean 속성 바뀌면 안됨 (id바꾸면 새로 다 받아와짐) --%>
<jsp:useBean id="sb" class="shop.bean.ShopBean" scope="session"/>
<jsp:setProperty property="p_num" name="sb" param="prod_num"/>

<%
	ProductVO pvo = sb.getProduct();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<h1><%=pvo.getP_name() %></h1>
<h2><%=pvo.getP_content() %></h2>

</head>
<body>

</body>
</html>