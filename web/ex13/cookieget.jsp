<%--
  Project: WizJSP
  FileName: cookieget  
  Date: 2015-05-08
  Time: 오후 3:27
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>cookieget</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();

    for (int i = 0; i < cookies.length; i++) {
        String str = cookies[i].getName();
        if (str.equals("cookieN")) {
            out.println("cookie[" + i + "] name : " + cookies[i].getName() + "<br/>");
            out.println("cookie[" + i + "] value : " + cookies[i].getValue() + "<br/>");
            out.println("========================== <br/>");
        }
    }
%>
<a href="cookiedel.jsp">cookie delete</a>
</body>
</html>
