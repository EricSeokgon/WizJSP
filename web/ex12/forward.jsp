<%--
  Project: WizJSP
  FileName: forward  
  Date: 2015-05-08
  Time: 오후 3:10
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>forward</title>
</head>
<body>
<jsp:forward page="forward_param.jsp">
  <jsp:param name="id" value="abcde"/>
  <jsp:param name="pw" value="1234"/>
</jsp:forward>
</body>
</html>
