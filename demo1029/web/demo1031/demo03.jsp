<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/10/31
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="./upload.do" method="post" enctype="multipart/form-data">
        用户名:<input type="text" name="username"><br>
        图片:<input type="file" name="upload"><br>
        <button type="submit">上传</button>
    </form>
</body>
</html>
