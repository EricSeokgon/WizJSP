package com.hadeslee.ex;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Project: WizJSP
 * FileName: ${NAME}
 * Date: 2015-05-11
 * Time: 오후 1:53
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "LoginOk", urlPatterns = {"/LoginOk"})
public class LoginOk extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Connection connection;
    private Statement stmt;
    private ResultSet resultSet;

    private String name, id, pw, phone1, phone2, phone3, gender;

    public LoginOk() {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        actionDo(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionDo(request, response);
    }

    private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        id = request.getParameter("id");
        pw = request.getParameter("pw");

        String query = "select * from member where id = '" + id + "' and pw = '" + pw + "'";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@//iccs.mooo.com:1521/orcl" , "scott" , "tiger");
            stmt = connection.createStatement();
            resultSet =  stmt.executeQuery(query);

            while (resultSet.next()) {
                name = resultSet.getString("name");
                id = resultSet.getString("id");
                pw = resultSet.getString("pw");
                phone1 = resultSet.getString("phone1");
                phone2 = resultSet.getString("phone2");
                phone3 = resultSet.getString("phone3");
                gender = resultSet.getString("gender");
            }

            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("name", name);
            httpSession.setAttribute("id", id);
            httpSession.setAttribute("pw", pw);

            response.sendRedirect("loginResult.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(resultSet != null) resultSet.close();
                if(stmt != null) stmt.close();
                if(connection != null) connection.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

    }
}
