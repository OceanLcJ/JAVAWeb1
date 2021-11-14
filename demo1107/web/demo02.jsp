<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/11/7
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <button id="ajax_btn">ajax提交按钮</button>
</body>
<script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
<script>
    $(function () {
        $('#ajax_btn').click(function () {
           $.ajax({
                url:"./demo02.do",
               data:{name:"张三",age:18},
               type:"GET",
               success:function (data) {
                   console.log(data);
               },
               dataType:"text"
           });
        });
    })
</script>
</html>
