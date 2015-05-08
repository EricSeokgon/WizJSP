<%--
  Project: WizJSP
  FileName: welcome  
  Date: 2015-05-08
  Time: 오후 4:23
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>welcome</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();

    for (int i = 0; i < cookies.length; i++) {
        String id = cookies[i].getValue();
        if (id.equals("abcde")) {
            out.println(id + "님 안녕하세요.<br/>");
        }
    }
%>
<a href="logout.jsp">로그아웃</a>
</body
</html>
