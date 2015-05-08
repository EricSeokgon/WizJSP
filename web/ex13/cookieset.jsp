<%--
  Project: WizJSP
  FileName: cookieset  
  Date: 2015-05-08
  Time: 오후 3:27
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>cookieset</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("cookieN", "cookieV");
    cookie.setMaxAge(60 * 60); //1시간 유지
    response.addCookie(cookie);
%>
<a href="cookieget.jsp">cookie get</a>
</body>
</html>
