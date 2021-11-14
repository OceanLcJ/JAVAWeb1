<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/10/22
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
    <%
        int age = 20;
        if (age <= 18){

    %>
    <h1>未成年！！！！！</h1>
    <%
        }else{
            %>
    <h1>成年了！！！</h1>
            <%
        }
    %>

<script type="text/javascript">

</script>
</body>
</html>
