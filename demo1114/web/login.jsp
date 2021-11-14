<%@ page import="java.util.Locale" %>
<%@ page import="java.util.ResourceBundle" %><%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/11/14
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        Locale locale = request.getLocale();
        ResourceBundle bundle = ResourceBundle.getBundle("i18n",Locale.US);
    %>
    <title><%=bundle.getString("login_page")%></title>
</head>
<body>

<h1><%=bundle.getString("login")%></h1>
<%=bundle.getString("username")%><input type="text" name="username"><br>
<%=bundle.getString("password")%><input type="password" name="password"><br>
<button><%=bundle.getString("login")%></button>
</body>
</html>
