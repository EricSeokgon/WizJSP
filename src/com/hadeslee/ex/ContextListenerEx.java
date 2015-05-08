package com.hadeslee.ex;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Project: WizJSP
 * FileName: ContextListenerEx
 * Date: 2015-05-08
 * Time: 오전 11:02
 * Author: Hadeslee
 * Note:
 * To change this template use File | Settings | File Templates.
 */
public class ContextListenerEx implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("contextInitialized");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("contextDestroyed");
    }
}
