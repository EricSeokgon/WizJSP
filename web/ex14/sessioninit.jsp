<%--
  Project: WizJSP
  FileName: sessioninit  
  Date: 2015-05-08
  Time: 오후 4:55
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>sessioninit</title>
</head>
<body>
<%
    session.setAttribute("mySessionName","mySessionData");
    session.setAttribute("myNum",12345);
%>
<a href="sessionget.jsp">session get</a>
</body>
</html>
