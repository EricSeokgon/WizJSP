<%--
  Project: WizJSP
  FileName: declaration  
  Date: 2015-05-08
  Time: 오후 1:35
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>declaration 예제</title>
</head>
<body>
<%!
    int i = 10;
    String str = "ABCDE";
%>
<%!
    public int sum(int a, int b) {
        return a + b;
    }
%>
<%
    out.println("i = " + i + "<br/>");
    out.println("str = " + str + "<br/>");
    out.println("SUM = " + sum(1, 5) + "<br/>");

%>
</body>
</html>
