<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="demo1031.com.bean.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/10/31
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        List<Student> students = new ArrayList<>();
        for (int i = 0;i < 20 ;i++){
            students.add(new Student(i,"学生姓名"+i,"密码"+i,10+i,"tel"+i));
        }
        request.setAttribute("students",students);
        
    %>
</head>
<body>
<c:forEach items="${students}" var="student">
    <h1>${student}</h1>
</c:forEach>
<c:forEach items="${students}" var="student">
    <c:choose>
        <c:when test="${student.age >15}">
            <h1>年级大于15的学生</h1>
        </c:when>
    </c:choose>
</c:forEach>

</body>
</html>
