package com.Listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import java.util.Date;

@WebListener
public class MyServletRequestListener implements ServletRequestListener {
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        Date date = new Date();
        System.out.println(date+"ServletRequestListener创建");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        Date date = new Date();
        System.out.println(date+"ServletRequestListener销毁");
    }
}
