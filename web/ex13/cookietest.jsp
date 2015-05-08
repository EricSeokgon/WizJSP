<%--
  Project: WizJSP
  FileName: cookietest  
  Date: 2015-05-08
  Time: 오후 4:17
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            out.println(cookies[i].getName() + "<br/>");
            out.println(cookies[i].getValue() + "<br/>");
        }
    }
%>
</body>
</html>
