package com.lcj.Servlet;

import com.lcj.entity.User;
import com.lcj.service.Impl.UserServiceImpl;
import com.lcj.service.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/client/user.do")
public class UserServlet extends BaseServlet{
    UserService userService = new UserServiceImpl();

    protected void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User login = userService.login(user);
        System.out.println(login);
        if (login == null){
            response.sendRedirect("./login.jsp");
        }else{
            response.sendRedirect("./product_list.html");
        }
    }
    protected void isExists(HttpServletRequest request,HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset:UTF-8");
        String username = request.getParameter("username");
        boolean flag = userService.existsUsername(username);
        PrintWriter writer = response.getWriter();
        if (flag){
            writer.write("true");
        }
        System.out.println(username);
    }

    protected void register(HttpServletRequest request,HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String tel = request.getParameter("telephone");
        String gender = request.getParameter("gender");
        String introduce = request.getParameter("introduce");
        Date date = new Date();
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setGender(gender);
        user.setEmail(email);
        user.setTelephone(tel);
        user.setIntroduce(introduce);
        user.setActiveCode(null);
        user.setRegistTime(null);
        boolean flag = Boolean.valueOf(request.getParameter("flag"));
        userService.registUser(user);
        if (flag){
            response.sendRedirect("./login.jsp");
        }else {
            response.sendRedirect("./regist.html");
        }

    }
}
