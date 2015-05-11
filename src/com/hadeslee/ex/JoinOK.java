package com.hadeslee.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Project: WizJSP
 * FileName: ${NAME}
 * Date: 2015-05-11
 * Time: 오후 1:17
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "JoinOk", urlPatterns = {"/JoinOk"})
public class JoinOk extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Connection connection;
    private Statement stmt;

    private String name, id, pw, phone1, phone2, phone3, gender;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinOk() {
        super();
        // TODO Auto-generated constructor stub

    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionDo(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
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

        String query = "insert into member values('" + name + "', '" + id + "', '" + pw + "', '" + phone1 + "', '" + phone2 + "', '"+ phone3 + "', '" + gender + "')";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@//iccs.mooo.com:1521/orcl" , "scott" , "tiger");
            stmt = connection.createStatement();
            int i = stmt.executeUpdate(query);
            if(i == 1){
                System.out.println("insert success");
                response.sendRedirect("joinResult.jsp");
            } else {
                System.out.println("insert fail");
                response.sendRedirect("join.html");
            }


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(stmt != null) stmt.close();
                if(connection != null) connection.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

    }

}
