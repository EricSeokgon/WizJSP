package com.hadeslee.ex;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Project: WizJSP
 * FileName: ${NAME}
 * Date: 2015-05-08
 * Time: ���� 10:14
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
//@WebServlet(name = "InitParam")
public class InitParam extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");

        String id = getInitParameter("id");
        String pw = getInitParameter("pw");
        String path = getInitParameter("path");

        System.out.println("id = "+id);
        System.out.println("pw = "+pw);
        System.out.println("path = "+path);

        //response.setContentType("text/html; charset=UTF-8");
        /*response.setContentType("text/html; charset=EUC-KR");
        PrintWriter writer = response.getWriter();

        writer.println("<html><head></head><body>");
        writer.println("���̵�:" + id + "<br/>");
        writer.println("��й�ȣ:" + pw + "<br/>");
        writer.println("���:" + path + "");
        writer.println("</body></html>");

        writer.close();*/
    }
}
