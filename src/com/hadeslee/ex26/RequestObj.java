package com.hadeslee.ex26;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Project: WizJSP
 * FileName: ${NAME}
 * Date: 2015-05-12
 * Time: 오후 1:06
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "RequestObj", urlPatterns = "/RequestObj")
public class RequestObj extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        actionDo(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
        actionDo(request, response);
    }

    private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("actionDo");

        request.setAttribute("id", "abcde");
        request.setAttribute("pw", "12345");

        RequestDispatcher dispatcher = request.getRequestDispatcher("ex26/dispacherjsp.jsp");
        dispatcher.forward(request, response);
    }


}
