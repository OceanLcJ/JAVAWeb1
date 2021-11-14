package demo1031.com.servlet;


import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@WebServlet("/demo1031/download01.do")
public class Download01Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getParameter("path");
        //因为前端是用a标签超链接 访问后端
        //所以是基于get请求
        //如果get没有乱码 可以不用这一行
//        path = new String(path.getBytes("ISO-8859-1"), "UTF-8");

        String filepath = "D:\\Upload\\" + path;
        File file = new File(filepath);
        if (!file.exists()) {
            response.getWriter().write("您要下载的文件不存在！");
            return;
        }
        path = new String(path.getBytes("UTF-8"), "ISO-8859-1");
        response.addHeader("content-disposition", "attachment;filename=" + path);
        IOUtils.copy(new FileInputStream(file), response.getOutputStream());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
