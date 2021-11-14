<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/10/24
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="masthead">
    <div class="row">
        <div class="col-md-6">
            <h3 class="text-muted">在线书城</h3>
            <h4 class="text-muted">bookstore.com</h4>
        </div>
        <div class="col-md-6">
            <div style="float: right;">
                <nav>
                    <ul class="nav nav-pills">
                        <li><a href="#">我的账户</a></li>
                        <li><a href="./product_cart.html">购物车</a></li>
                        <li><a href="#">新用户注册</a></li>
                        <li><a href="#">帮助中心</a></li>
                    </ul>
                </nav>
            </div>
            <div class="row">
                <div class="col-lg-6">
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="请输入图书名称">
                        <span class="input-group-btn">
										<button class="btn btn-default" type="button">搜索</button>
									</span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
        </div>
    </div>


    <nav>
        <ul class="nav nav-justified">
            <li><a href="../index.html">首页</a></li>
            <li><a href="#">文学</a></li>
            <li><a href="#">经管</a></li>
            <li><a href="#">励志</a></li>
            <li><a href="#">艺术</a></li>
            <li><a href="#">少儿</a></li>
            <li><a href="#">生活百科</a></li>
            <li class="active"><a href="./product_list.html">全部分类</a></li>
        </ul>
    </nav>
</div>
</body>
</html>
