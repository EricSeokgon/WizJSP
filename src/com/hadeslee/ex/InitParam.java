package com.hadeslee.ex;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
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
 * Time: 오전 10:14
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "InitParam", urlPatterns = {"/InitP"}, initParams = {@WebInitParam(name = "id", value = "aaaa"), @WebInitParam(name = "pw", value = "99999"), @WebInitParam(name = "path", value = "C:\\Users\\sklee\\IdeaProjects")})

public class InitParam extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");

        String id = getInitParameter("id");
        String pw = getInitParameter("pw");
        String path = getInitParameter("path");

        System.out.println("InitParam Web.xml";
        System.out.println("id = " + id);
        System.out.println("pw = " + pw);
        System.out.println("path = " + path);

        //response.setContentType("text/html; charset=UTF-8");
        /*response.setContentType("text/html; charset=EUC-KR");
        PrintWriter writer = response.getWriter();

       writer.println("<html><head></head><body>");
        writer.println("ServletInitParam<br/>");
        writer.println("아이디:" + id + "<br/>");
        writer.println("비밀번호:" + pw + "<br/>");
        writer.println("경로:" + path + "");
        writer.println("</body></html>");

        writer.close();*/
    }
}
