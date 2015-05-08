<%@ page import="java.util.Arrays" %>
<%--
  Project: WizJSP
  FileName: expression  
  Date: 2015-05-08
  Time: 오후 1:40
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>expression 예제</title>
</head>
<body>
<%!
    int i = 10;
    String str = "ABCDE";

    public int sum(int a, int b) {
        return a + b;
    }
%>

<%= i %><br/>
<%= str %><br/>
<%= sum(1, 5)%><br/>

<%
    int[] iArr = {10, 20, 30};
    out.println(Arrays.toString(iArr));
%>
</body>
</html>
