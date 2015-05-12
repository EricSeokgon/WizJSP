<%--
  Project: WizJSP
  FileName: jstlcore  
  Date: 2015-05-12
  Time: 오전 10:51
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jstl core</title>
</head>
<body>
<c:set var="varName" value="varValue"/>
varName : <c:out value="${varName}"/>
<br>
<c:remove var="varName"/>
varName : <c:out value="${varName}"/>
<h3>
    <hr>
    <c:catch var="error">
            <%= 2/0%>
    </c:catch>
    <br>
    <c:out value="${error}"/>
    <hr>

    <c:if test="${1+2==3}">
    1 + 2 = 3
    </c:if>
    <c:if test="${1+2!=3}">
    1 + 2 != 3
    </c:if>
    <hr>
    <c:forEach var="fEach" begin="0" end="30" step="3">
        ${fEach}
    </c:forEach>

</body>
</html>