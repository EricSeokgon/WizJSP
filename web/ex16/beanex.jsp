<%--
  Project: WizJSP
  FileName: beanex.jsp
  Date: 2015-05-09
  Time: 오전 3:10
  Author: hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:useBean id="student" class="com.hadeslee.ex.Student" scope="page"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
<jsp:setProperty name="student" property="name" value="홍길동"/>
<jsp:setProperty name="student" property="age" value="13"/>
<jsp:setProperty name="student" property="grade" value="6"/>
<jsp:setProperty name="student" property="stuentNum" value="7"/>

이름 : <jsp:getProperty name="student" property="name"/><br>
나이 : <jsp:getProperty name="student" property="age"/><br>
학년 : <jsp:getProperty name="student" property="grade"/><br>
번호 : <jsp:getProperty name="student" property="stuentNum"/><br>

</body>
</html>
