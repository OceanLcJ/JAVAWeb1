<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/10/29
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
      request.setAttribute("key1",null);
    %>

    表达式脚本输出key1 = <%= request.getAttribute("key1") == null ? "" : request.getAttribute("key1")%>
  </body>
</html>
