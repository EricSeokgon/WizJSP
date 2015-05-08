<%@ page import="java.util.Enumeration" %>
<%--
  Project: WizJSP
  FileName: sessionget  
  Date: 2015-05-08
  Time: 오후 4:56
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>sessionget</title>
</head>
<body>
<%
    Object obj1 = session.getAttribute("mySessionName");
    String mySessionName = (String) obj1;
    out.println(mySessionName + "<br/>");

    Object obj2 = session.getAttribute("myNum");
    Integer myNum = (Integer) obj2;
    out.println(myNum + "<br/>");

    out.println("**********************<br/>");

    String sName;
    String sValue;
    Enumeration enumeration = session.getAttributeNames();
    while (enumeration.hasMoreElements()) {
        sName = enumeration.nextElement().toString();
        sValue = session.getAttribute(sName).toString();
        out.println("sName : " + sName + "<br/>");
        out.println("sValue : " + sValue + "<br/>");
    }

    out.println("**********************<br/>");

    String sessionID = session.getId();
    out.println("sessionID : " + sessionID + "<br/>");
    int sessionInter = session.getMaxInactiveInterval();
    out.println("sessionInter : " + sessionInter + "<br/>");

    out.println("**********************<br/>");

    session.removeAttribute("mySessionName");
    Enumeration enumeration1 = session.getAttributeNames();
    while (enumeration1.hasMoreElements()) {
        sName = enumeration1.nextElement().toString();
        sValue = session.getAttribute(sName).toString();
        out.println("sName : " + sName + "<br/>");
        out.println("sValue : " + sValue + "<br/>");
    }

    out.println("**********************<br/>");

    session.invalidate();
    if (request.isRequestedSessionIdValid()) {
        out.println("session valid");
    } else {
        out.println("session invalid");
    }

%>
</body>
</html>
