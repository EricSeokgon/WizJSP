<%@ page import="javax.lang.model.element.NestingKind" %>
<%--
  Project: WizJSP
  FileName: forward_param  
  Date: 2015-05-08
  Time: 오후 3:09
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>forward param</title>
</head>
<body>
<%!
String id, pw;
%>
<%
    id = request.getParameter("id");
    pw = request.getParameter("pw");
%>
아이디 : <%=id%> <br/>
비밀번호 : <%=pw%>
</body>
</html>
