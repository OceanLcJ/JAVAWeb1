package com.Listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

@WebListener
public class MyAttributeListener implements HttpSessionAttributeListener, ServletContextAttributeListener, ServletRequestAttributeListener {
    @Override
    public void attributeAdded(ServletContextAttributeEvent event) {
        System.out.println("往 ServletContext 中 添加域属性，名称：" + event.getName() + "，值：" + event.getValue());
    }

    @Override
    public void attributeRemoved(ServletContextAttributeEvent event) {
        System.out.println("往 ServletContext 中 移除域属性，名称：" + event.getName() + "，旧值：" + event.getValue());
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent event) {
        System.out.println("往 ServletContext 中 替换域属性，名称：" + event.getName() + "，值：" + event.getValue());
        //如何拿到新的值
        System.out.println("新的值：" + event.getServletContext().getAttribute(event.getName()));
    }

    @Override
    public void attributeAdded(ServletRequestAttributeEvent srae) {

    }

    @Override
    public void attributeRemoved(ServletRequestAttributeEvent srae) {

    }

    @Override
    public void attributeReplaced(ServletRequestAttributeEvent srae) {

    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        //获取当前操作的Value值
//        event.getValue()
        //获取当前操作的Name值
//        event.getName()
        //获取当前操作的Session对象
//        event.getSession()/
        //获取到当前操作的Session域对象属性名
        String name = event.getName();
        if ("user".equals(name)) {
            //说明登录成功

        }
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {

    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {

    }
}
