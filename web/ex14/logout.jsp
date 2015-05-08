<%@ page import="java.util.Enumeration" %>
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
    Enumeration enumeration = session.getAttributeNames();
    while (enumeration.hasMoreElements()) {
        String sName = enumeration.nextElement().toString();
        String sValue = (String) session.getAttribute(sName);

        if (sValue.equals("abcde")) {
            session.removeAttribute(sName);
        }
    }
%>
<a href="sessiontest.jsp">sessionTest</a>
</body>
</html>
