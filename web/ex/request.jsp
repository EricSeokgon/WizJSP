<%--
  Project: WizJSP
  FileName: request  
  Date: 2015-05-08
  Time: 오후 2:19
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>request 요청 예제</title>
</head>
<body>
<%
    out.println("서버 : " + request.getServerName() + "<br/>");
    out.println("포트번호 : " + request.getServerPort() + "<br/>");
    out.println("요청방식 : " + request.getMethod() + "<br/>");
    out.println("프로토콜 : " + request.getProtocol() + "<br/>");
    out.println("URL : " + request.getRequestURL() + "<br/>");
    out.println("URI : " + request.getRequestURI() + "<br/>");
%>
</body>
</html>
