package com.lcj.Servlet;

import com.lcj.entity.User;
import com.lcj.service.Impl.UserServiceImpl;
import com.lcj.service.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/admin.do")
public class AdaminServlet extends BaseServlet{
    UserService userService = new UserServiceImpl();

    protected void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User login = userService.login(user);
        if (login != null){
            request.getSession().setAttribute("user",login);
            response.sendRedirect("./index.jsp");
        }else{
            response.sendRedirect("./login.jsp");
        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect("./login.jsp");
    }
}
