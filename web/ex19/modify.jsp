<%@ page import="java.sql.Connection" %>
<%@ page import="java.beans.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%--
  Project: WizJSP
  FileName: modify  
  Date: 2015-05-11
  Time: 오후 2:18
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%!
    Connection connection;
    java.sql.Statement statement;
    ResultSet resultSet;

        String name
                ,
                id
                ,
                pw
                ,
                phone1
                ,
                phone2
                ,
                phone3
                ,
                gender;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>modify</title>
</head>
<body>
<%
    id = (String) session.getAttribute("id");

    String query = "select * from member where id='" + id + "'";

    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@//iccs.mooo.com:1521/orcl", "scott", "tiger");
    statement = connection.createStatement();
    resultSet = statement.executeQuery(query);

    while (resultSet.next()) {
        name = resultSet.getString("name");
        id = resultSet.getString("id");
        pw = resultSet.getString("pw");
        phone1 = resultSet.getString("phone1");
        phone2 = resultSet.getString("phone2");
        phone3 = resultSet.getString("phone3");
        gender = resultSet.getString("gender");
    }

%>
<form action="ModifyOk" method="post">
    이름 : <input type="text" name="named" size="20" value="<%=name %>"> <br>
    아이디 : <%=id %><br>
    비밀번호 : <input type="text" name="pw" size="20"> <br>
    전화번호 : <select name="phone1">
    <option value="010">010</option>
    <option value="016">016</option>
    <option value="017">017</option>
    <option value="018">018</option>
    <option value="019">019</option>
    <option value="011">011</option>
</select>
    <input type="text" name="phone2" size="5" value="<%=phone2 %>"> - <input type="text" name="phone3" size="5"
                                                                             value="<%=phone3 %>">
    <%
        if (gender.equals("man")) {
    %>
    성별구분 : <input type="radio" name="gender" value="man" checked="checked">남 &nbsp;<input type="radio" name="gender"
                                                                                          value="woman">여 <br>
    <%
    } else {
    %>
    성별구분 : <input type="radio" name="gender" value="man">남 &nbsp;<input type="radio" name="gender" value="woman"
                                                                        checked="checked">여 <br>
    <%
        }
    %>
    <input type="submit" value="정보수정"><input type="reset" value="취소">
</form>

</body>
</html>