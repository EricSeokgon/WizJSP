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
 * Project: WizJSP
 * FileName: ${NAME}
 * Date: 2015-05-08
 * Time: 오전 9:56
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
//@WebServlet(name = "ServletInitParam")
public class ServletInitParam extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        //request.setCharacterEncoding("UTF-8");
        String id = getInitParameter("id");
        String pw = getInitParameter("pw");
        String path = getInitParameter("path");

        //response.setContentType("text/html; charset=UTF-8");
        response.setContentType("text/html; charset=EUC-KR");
        PrintWriter writer = response.getWriter();

        writer.println("<html><head></head><body>");
        writer.println("아이디:" + id + "<br/>");
        writer.println("비밀번호:" + pw + "<br/>");
        writer.println("경로:" + path + "");
        writer.println("</body></html>");

        writer.close();

    }
}
