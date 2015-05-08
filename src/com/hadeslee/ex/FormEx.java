package com.hadeslee.ex;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

/**
 * Created by IntelliJ IDEA.
 * User: hadeslee
 * Date: 2015-05-08
 * Time: 오전 1:27
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name="FormEx", urlPatterns="/FormEx")
public class FormEx extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        String[] hobbys = request.getParameterValues("hobby");
        String major = request.getParameter("major");
        String protocol = request.getParameter("protocol");

        response.setContentType("text/html; charset=UTF-8");

        PrintWriter writer = response.getWriter();

        writer.println("<html><head></head><body>");
        writer.println("이름:" + name + "<br/>");
        writer.println("아이디:" + id + "<br/>");
        writer.println("비밀번호:" + pw + "<br/>");
        writer.println("취미:" + Arrays.toString(hobbys) + "<br/>");
        writer.println("전공:" + major + "<br/>");
        writer.println("프로토콜:" + protocol + "<br/>");
        writer.println("</body></html>");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
    }
}
