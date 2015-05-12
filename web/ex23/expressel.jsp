<%--
  Project: WizJSP
  FileName: expressel  
  Date: 2015-05-12
  Time: 오전 9:26
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:useBean id="member" class="com.hadeslee.ex23.memberInfo" scope="page"/>
<jsp:setProperty name="member" property="name" value="홍길동"/>
<jsp:setProperty name="member" property="id" value="abc"/>
<jsp:setProperty name="member" property="pw" value="123"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>express EL</title>
</head>
<body>
이름 :
<jsp:getProperty name="member" property="name"/>
<br>
아이디 :
<jsp:getProperty name="member" property="id"/>
<br>
비밀번호 :
<jsp:getProperty name="member" property="pw"/>
<br>

<hr>

이름 : ${member.name}<br>
아이디 : ${member.id}<br>
비밀번호: ${member.pw}<br>

</body>
</html>