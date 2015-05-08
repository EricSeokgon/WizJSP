<%--
  Project: WizJSP
  FileName: logout  
  Date: 2015-05-08
  Time: 오후 4:23
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>logout</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getValue().equals("abcde")) {
                cookies[i].setMaxAge(0);
                response.addCookie(cookies[i]);
            }

        }
    }
    response.sendRedirect("cookietest.jsp");
%>
</body>
</html>
