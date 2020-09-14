<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- HTML주석 -->
<%-- JSP주석 
    JSP 기본문법
    - 스크립트 요소(스크립트릿, 출력문, 선언문)
    1) 스크립트릿 : 자바코드 정의할 때 사용(변수 선언, 제어문 등..)
        <%
            String msg = "TEST";
            if(msg.equals("ABC")){
                ...;
            }
        %>
    
    2) 출력문 : 서블릿의 out.println();을 사용하고자 할 때
        <%= msg %> ---> out.println(msg);
    
    3) 선언문 : 멤버변수를 선언하거ㅏ, 멤버 메서드를 선언할 때 사용
        <%!
            String msg;
            private void test(){
                System.out.prinln(msg);
            }
        %>
--%>

    <%!
        int cnt = 100;
    %>

    <h1>스크립트 요소 연습</h1>
    <article>
        <table border="1" style="width: 260px;">
            <colgroup>
                <col width="80px"/>
                <col width="180px"/>
            </colgroup>
            <thead>
                <tr>
                    <th>번호</th>
                    <th>항목</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(int i=0; i<cnt;i++){
                    %>
                        <!--for문 안에 존재하는 HTML 영역-->
                        <tr>
                            <td><%=i%></td>
                            <td>항목<%=i+1%></td>
                        </tr>
                    <%
                    }
                %>
            </tbody>
        </table>
    </article>
</body>
</html>