<%--
  Created by IntelliJ IDEA.
  User: Hadeslee
  Date: 2015-05-08
  Time: 오후 1:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>scriptlet 예제</title>
</head>
<body>
<%
    int i = 0;
    while (true) {
        i++;
        out.println("2 *" + i + " = " + (2 * i) + "<br/>");

%>
===========<br/>
<%
        if (i >= 9) break;
    }
%>
</body>
</html>
