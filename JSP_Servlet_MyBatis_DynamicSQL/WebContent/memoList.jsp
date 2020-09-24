<%@page import="data.vo.MemoVO"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.MemoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{ font-size: 12px }
	table{
		border-collapse: collapse;
		width: 500px;
	}
	table th, table tbody td{
		border: 1px solid black;
		padding: 4px;
	}
	table thead tr:first-child{ line-height: 40px; }
	table thead td:last-child{ text-align: right; }
	table caption { text-indent: -9999px; height: 0; }
</style>
</head>
<body>
	<h1>메모 목록</h1>
	<table>
		<caption>메모목록 보기</caption>
		<colgroup>
			<col width="60px"/> <!-- 번호 -->
			<col width="*"/> <!-- 내용 -->
			<col width="100px"/> <!-- 글쓴이 -->
			<col width="100px"/> <!-- 글쓴날짜 -->
		</colgroup>
		<thead>
			<tr>
				<td colspan="2">
					<form action="memoList.jsp" method="post">
						<select id="searchType" name="searchType">
							<option value="0">글쓴이</option>
							<option value="1">내용</option>
							<option value="2">날짜</option>
						</select>
						<input type="text" id="searchValue" name="searchValue"/>
						<input type="button" value="검색" onclick="search(this.form)"/>
					</form>
				</td>
				<td colspan="2">
					<input type="button" value="추가" id="add_btn" onclick="goAdd()">
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>글쓴이</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<%
			String sct = request.getParameter("searchType");
			String scv = request.getParameter("searchValue");
			List<MemoVO> list = null;
			if(sct==null){
				list = MemoDAO.all();
			}else{
				list = MemoDAO.search(sct,scv);
			}
			session.setAttribute("data",list);
			for(MemoVO mvo : list){
				%>
			<tr>
				<td><%=mvo.getIdx() %></td>
				<td><a href="memoView.jsp?idx=<%=mvo.getIdx()%>"><%=mvo.getContent() %></a></td>	
				<td><%=mvo.getWriter() %></td>
				<td><%=mvo.getReg_date() %></td>
			</tr>
				<%
			}
			%>
		</tbody>	
		
		
	</table>
	
<script type="text/javascript">
	function goAdd(){
		location.href = "memoAdd.jsp";
	}
	function search(frm){
		var v = frm.searchValue.value;
		if(v.trim().length < 1){
			alert("검색할 단어를 입력하세요");
			v="";
			document.getElementById("searchValue").focus();
			return;
		}
		frm.submit();
	}
</script>
</body>
</html>