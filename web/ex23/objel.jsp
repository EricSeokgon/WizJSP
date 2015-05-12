<%--
  Project: WizJSP
  FileName: objel  
  Date: 2015-05-12
  Time: 오전 9:54
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
    <form action="objelOk.jsp" method="get">
        아이디 : <input type="text" name="id"> <br>
        비밀번호 : <input type="password" name="pw"> <br>
        <input type="submit" value="login">
    </form>

<%
    application.setAttribute("application_name","application_value");
    session.setAttribute("session_name","session_value");
    pageContext.setAttribute("page_name","page_value");
    request.setAttribute("request_name","request_value");
%>
</body>
</html>