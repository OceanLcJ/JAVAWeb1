<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.Demo1029.servlet.Student" %><%--
  Created by IntelliJ IDEA.
  User: WuLiangHang
  Date: 2021/10/29
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    Student s = new Student();
    s.setName("张三");
    s.setStuNo(new Integer[]{1, 2, 3});
    List<String> parentsNames = new ArrayList<>();
    parentsNames.add("张三父亲");
    parentsNames.add("张三母亲");
    parentsNames.add("张三爷爷");
    parentsNames.add("张三奶奶");
    s.setParentsNames(parentsNames);
    Map<String, Object> map = new HashMap<>();
    map.put("key1", "value1");
    map.put("key2", "value2");
    map.put("key3", "value3");
    map.put("key4", "value4");
    map.put("key5", "value5");
    s.setMap(map);
    pageContext.setAttribute("student", s);
%>
<body>
输出Student对象:${student}<br/>
输出Student的name属性:${student.name}<br/>
输出Student的stuNo数组属性:${student.stuNo}<br/>
输出Student的parentsNames集合属性:${student.parentsNames}<br/>
输出Student的parentsNames集合属性某一项:${student.parentsNames[1]}<br/>
输出Student的map集合属性:${student.map}<br/>
输出Student的map集合属性中某个key的值:${student.map[key1]}<br/>
</body>
</html>
