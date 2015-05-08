<%--
  Project: WizJSP
  FileName: request_send  
  Date: 2015-05-08
  Time: 오후 2:49
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>

<%!
    int age;
%>

<%
    String str = request.getParameter("age");
    age = Integer.parseInt(str);

    if (age >= 20) {
        response.sendRedirect("pass.jsp?age=" + age);
    } else {
        response.sendRedirect("ng.jsp?age=" + age);
    }
%>

<%= age %>

</body>
</html>
