package com.demo1112.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/demo1112/demo03.do")
public class Demo03Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie cookie = new Cookie("key1","修改后的值");
        resp.addCookie(cookie);

        Cookie cookie1 = new Cookie("cookie1","cookie11");
        cookie1.setMaxAge(-1);
        Cookie cookie2 = new Cookie("key2","cookie11");
        cookie2.setMaxAge(0);
        Cookie cookie3 = new Cookie("cookie3","cookie11");
        cookie3.setMaxAge(60*60);
        resp.addCookie(cookie1);
        resp.addCookie(cookie2);
        resp.addCookie(cookie3);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
