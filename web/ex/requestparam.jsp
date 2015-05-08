<%@ page import="java.util.Arrays" %>
<%--
  Project: WizJSP
  FileName: requestparam  
  Date: 2015-05-08
  Time: 오후 2:28
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>request param 예제</title>
</head>
<body>
<%!
    String name, id , pw , major, protocol;
    String[] hobbys;
%>

<%
    request.setCharacterEncoding("UTF-8");

    name = request.getParameter("name");
    id = request.getParameter("id");
    pw = request.getParameter("pw");
    major = request.getParameter("major");
    protocol = request.getParameter("protocol");
    hobbys = request.getParameterValues("hobby");


%>


이름: <%= name %>  <br/>
아이디:  <%= id%>  <br/>
비밀번호:  <%= pw%>  <br/>
취미:  <%= Arrays.toString(hobbys) %> <br/>
전공:  <%= major%> <br/>
프로토콜:<%= protocol%>  <br/>


</body>
</html>
