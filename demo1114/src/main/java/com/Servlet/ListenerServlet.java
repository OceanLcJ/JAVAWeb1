package com.Servlet;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/listener.do")
public class ListenerServlet extends BaseServlet {

    protected void contextOperation(HttpServletRequest req, HttpServletResponse resp) {
        //先拿到ServletContext对象
        ServletContext servletContext = req.getServletContext();
        //添加域属性
        servletContext.setAttribute("contextAttributeName", "contextAttributeValue1");
        //替换域属性
        servletContext.setAttribute("contextAttributeName", "contextAttributeValue2");
        //移除域属性
        servletContext.removeAttribute("contextAttributeName");
    }
}
