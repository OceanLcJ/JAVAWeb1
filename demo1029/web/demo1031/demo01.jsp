<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/10/31
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set scope="page" var="age" value="200">

</c:set>

<c:if test="${age < 18}">
    <h1>欢迎您</h1>
</c:if>

<c:choose>
    <c:when test="${age > 60 && age <150}">
        <h1>老年人</h1>
    </c:when>
    <c:when test="${age < 60 && age >30}">
        <h1>中年人</h1>
    </c:when>
    <c:when test="${age < 30 && age >20}">
        <h1>青年</h1>
    </c:when>
    <c:when test="${age < 20 && age >15}">
        <h1>青少年</h1>
    </c:when>
    <c:when test="${age < 15 && age >0}">
        <h1>儿童</h1>
    </c:when>
    <c:otherwise>
        <h1>究极魔人</h1>
    </c:otherwise>
</c:choose>
</body>
</html>
