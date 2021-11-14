<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/10/24
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lcj.entity.User" %>
<%
    User user = (User) request.getSession().getAttribute("user");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">(Nav)在线书城后台管理系统</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"> <%
                    if (user != null) {
                %>
                    <%=user.getUsername()%>
                    <%
                        }
                    %></a></li>
                <li><a href="#">设置</a></li>
                <li><a href="./admin.do?action=logout">退出</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="搜索">
            </form>
        </div>
    </div>
</nav>
</body>
</html>
