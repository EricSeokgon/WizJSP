<%--
  Project: WizJSP
  FileName: objelOk  
  Date: 2015-05-12
  Time: 오전 9:55
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
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
%>
아이디 : <%=id%><br>
비밀번호 : <%=pw%><br>
<hr>

아이디 : ${param.id}<br>
비밀번호 : ${param.pw}<br>
아이디 : ${param["id"]}<br>
비밀번호 : ${param["pw"]}<br>
<hr>
applicationScope : ${applicationScope.application_name}<br>
sessionScope : ${sessionScope.session_name}<br>
pageScope : ${pageScope.page_name}<br>
requestScope : ${requestScope.request_name}

<hr>

context 초기화 파라미터<br>
${initParam.con_name}<br>
${initParam.con_id}<br>
${initParam.con_pw}<br>


</body>
</html>