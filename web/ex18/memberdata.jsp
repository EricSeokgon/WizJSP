<%@ page import="java.sql.Connection" %>
<%@ page import="java.beans.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.SplittableRandom" %>
<%@ page import="java.sql.DriverManager" %>
<%--
  Project: WizJSP
  FileName: memberdata
  Date: 2015-05-10
  Time: 오전 3:05
  Author: hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%!
    Connection connection;
    java.sql.Statement statement;
    ResultSet resultSet;

    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@//iccs.mooo.com:1521/orcl";
    String uid = "scott";
    String upw = "tiger";
    String query = "select * from member";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
<%
    try {
        Class.forName(driver);
        connection = DriverManager.getConnection(url, uid, upw);
        statement = connection.createStatement();
        resultSet = statement.executeQuery(query);
        while (resultSet.next()) {
            String id = resultSet.getString("id");
            String pw = resultSet.getString("pw");
            String name = resultSet.getString("name");
            String phone = resultSet.getString("phone");

            out.println("아이디 : " + id + ", 비밀번호 : " + pw + ", 이름 : " + name + ", 전화번호 : " + phone + "<br />");
        }
    } catch (Exception e) {
    } finally {
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

%>
</body>
</html>
