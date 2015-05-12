<%--
  Project: WizJSP
  FileName: eloperator  
  Date: 2015-05-12
  Time: 오전 9:19
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

${1+2}<br>
${1-2}<br>
${1*2}<br>
${1/2}<br>
${1>2}<br>
${1<2}<br>
${(1>2)?1:2}<br>
${(1>2)||(1<2)}<br>
<hr>
<%=1 + 2 %><br>
<%=1 * 2 %><br>
<%=1 / 2 %><br>
<%=1 > 2 %><br>
<%=1 < 2 %><br>
<%=(1 > 2) ? 1 : 2 %><br>
<%=(1 > 2) || (1 < 2) %><br>

</body>
</html>