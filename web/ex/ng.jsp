<%--
  Project: WizJSP
  FileName: ng  
  Date: 2015-05-08
  Time: 오후 2:52
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>ng</title>
</head>
<body>
<%!
  int age;
%>
<%
  String str = request.getParameter("age");
  age = Integer.parseInt(str);
%>
미성년자 입니다. 주류구매가 불가능 합니다.
<a href="requestex.html">처음으로 이동</a>
</body>
</html>
