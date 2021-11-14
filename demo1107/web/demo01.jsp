<%--
  Created by IntelliJ IDEA.
  User: 71
  Date: 2021/11/7
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <script type="text/javascript">
      var student = {
          //普通属性
          "name": "小明",
          "age": 18,
          "graduated": true,
          //作为数组的属性
          "parent_name": ["张三", "李四", 20, false],
          //对象属性
          "teacher": {
              "name": "老师1",
              "major": "math",
              "age": 40
          },
          //对象数组属性
          "friends": [
              {"name": "王五", 'age': 30}, {"name": "赵六", "age": 40}
          ]
      };
      console.log(student.name);
      console.log(student.age);
      console.log(student.graduated);
      for (var i = 0; i < student.parent_name.length; i++) {
          console.log(student.parent_name[i]);
      }
      console.log(student.teacher.age);
      for (var i = 0; i < student.friends.length; i++) {
          console.log(student.friends[i].name);
      }
  </script>

</body>
</html>
