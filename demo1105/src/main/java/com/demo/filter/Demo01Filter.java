package com.demo.filter;

import javax.servlet.*;
import java.io.IOException;

public class Demo01Filter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String username = filterConfig.getInitParameter("username");
        String password = filterConfig.getInitParameter("password");
        String filterName = filterConfig.getFilterName();
        System.out.println(username);
        System.out.println(password);
        System.out.println(filterName);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("图片资源被拦截");
    }
}
