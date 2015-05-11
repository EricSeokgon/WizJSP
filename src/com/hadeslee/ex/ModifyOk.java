package com.hadeslee.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

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
 * Time: 오후 2:30
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "ModifyOk", urlPatterns = "/ModifyOk")
public class ModifyOk extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Connection connection;
    private Statement stmt;

    private String name, id, pw, phone1, phone2, phone3, gender;
    HttpSession httpSession;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        actionDo(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionDo(request, response);
    }

    private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        name = request.getParameter("name");
        id = request.getParameter("id");
        pw = request.getParameter("pw");
        phone1 = request.getParameter("phone1");
        phone2 = request.getParameter("phone2");
        phone3 = request.getParameter("phone3");
        gender = request.getParameter("gender");

        String query = "update set member = '" + name + "','" + id + "','" + pw + "','" + phone1 + "','" + phone2 + "','" + phone3 + "','" + gender + "'";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@//iccs.mooo.com:1521/orcl", "scott", "tiger");
            stmt = connection.createStatement();

            int i = stmt.executeUpdate(query);

            if (i == 1) {
                System.out.println("insert success");
                response.sendRedirect("joinReult.jsp");
            } else {
                System.out.println("insert fail");
                response.sendRedirect("join.html");
            }
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            try{
                if (stmt != null) stmt.getClass();
                if (connection != null) connection.close();
            }catch (Exception e){}
        }

    }
}
