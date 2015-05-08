<%@ page import="java.util.Collection" %>
<%--
  Project: WizJSP
  FileName: loginOk  
  Date: 2015-05-08
  Time: 오후 4:23
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>loginOk</title>
</head>
<body>
<%!
String id , pw;
%>

<%

    id = request.getParameter("id");
    pw = request.getParameter("pw");

    if (id.equals("abcde")&&pw.equals("12345")){
        Cookie cookie=new Cookie("id",id);
        cookie.setMaxAge(60);
        response.addCookie(cookie);
        response.sendRedirect("welcome.jsp");
    }else{
        response.sendRedirect("login.html");
    }






%>
</body>
</html>
