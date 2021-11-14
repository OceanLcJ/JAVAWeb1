package demo1031.com.Filter;

import demo1031.com.entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/demo1105/admin/*")
public class AdminFilter implements Filter{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("拦截器拦截成功！");
        //如何在这里添加 登录才能访问的逻辑？
        //1.获取session对象
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        //2.拿到User对象
        User user = (User) session.getAttribute("user");
        if (user == null) {
            //没有登录
        } else {
            //这行代码是放行的标志
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
