<%--
  Project: WizJSP
  FileName: loginResult.jsp  
  Date: 2015-05-11
  Time: 오후 2:15
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%!
String name
        ,
        id
        ,
        pw;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>loginResult</title>
</head>
<body>
<%
    name = (String) session.getAttribute("name");
    id = (String) session.getAttribute("id");
    pw = (String) session.getAttribute("pw");
%>
<%= name%> 님 안녕 하세요<br>
<a href="modify.jsp">회원정보수정</a>
</body>
</html>