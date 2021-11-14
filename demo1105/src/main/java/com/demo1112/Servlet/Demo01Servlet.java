package com.demo1112.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/demo1112/demo01.do")
public class Demo01Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie cookie1 = new Cookie("key1","value1");
        resp.addCookie(cookie1);
        resp.addCookie(new Cookie("key1","value1"));
        resp.addCookie(new Cookie("key2","value2"));
        resp.addCookie(new Cookie("key3","value3"));
        resp.addCookie(new Cookie("key4","value4"));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
