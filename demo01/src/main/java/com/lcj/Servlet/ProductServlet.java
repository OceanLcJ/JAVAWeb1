package com.lcj.Servlet;

import com.lcj.entity.Product;
import com.lcj.service.Impl.ProductServiceImpl;
import com.lcj.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@WebServlet("/product.do")
public class ProductServlet extends BaseServlet{

    ProductService productService = new ProductServiceImpl();

    protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        Double price = Double.valueOf(request.getParameter("price"));
        String category = new String(request.getParameter("category").getBytes("UTF-8"), "UTF-8");
        Integer pNum = Integer.valueOf(request.getParameter("pNum"));
        String imgUrl = request.getParameter("imgUrl");
        String description = new String(request.getParameter("description").getBytes("UTF-8"), "UTF-8");
        int result = productService.insertProduct(new Product(null,productName,price,category,pNum,imgUrl,description));
        response.sendRedirect("./product.do?action=queryAll");
    }

    protected void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        String productName = request.getParameter("productName");
        Double price = Double.valueOf(request.getParameter("price"));
        String category = new String(request.getParameter("category").getBytes("UTF-8"), "UTF-8");
        Integer pNum = Integer.valueOf(request.getParameter("pNum"));
        String imgUrl = request.getParameter("imgUrl");
        String description = new String(request.getParameter("description").getBytes("UTF-8"), "UTF-8");
        int result = productService.updateProduct(new Product(id,productName,price,category,pNum,imgUrl,description));
        response.sendRedirect("./product.do?action=queryAll");
    }

    protected void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        int result = productService.deleteProduct(id);
        System.out.println(result);
        response.sendRedirect("./product.do?action=queryAll");
    }

    protected void queryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = productService.queryAllProducts();
        request.setAttribute("products",products);
        request.getRequestDispatcher("/admin/product_list.jsp").forward(request,response);
    }
    protected void queryProductById(HttpServletRequest request, HttpServletResponse response){

    }
}
