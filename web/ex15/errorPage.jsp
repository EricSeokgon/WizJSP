<%--
  Project: WizJSP
  FileName: errorPage
  Date: 2015-05-09
  Time: 오전 1:59
  Author: hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>errorPage</title>
</head>
<body>
에러 발생 <br>
<%= exception.getMessage()%>
</body>
</html>
