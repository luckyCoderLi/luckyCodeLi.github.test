<%--
  Created by IntelliJ IDEA.
  User: 31954
  Date: 2019/6/18
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student</title>
</head>
<body>
    <h3>所有学生信息</h3>
    <table border="1" width="300px">
        <tr bgcolor="yellow">
            <th>id</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>班级</th>
            <th>班主任</th>
        </tr>
        <%--c:forEach JSTL标签相当于foreach表达式
            items 容器对象
            var 变量名;
            varStatus 循环状态对象--%>
        <%--c:if 标签相当于if表达式
            test="条件 " 固定表达式，
            只有条件语句为true时，if表达式才会执行;否则，相当于注释了，不会在浏览器显示--%>

        <c:forEach items="${students}" var="student" varStatus="s">
            <c:if test="${s.count % 2 != 0}">
                <tr bgcolor="aqua">
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.age}</td>
                    <td>${student.classStudent}</td>
                    <td>${student.classTeacher}</td>
                </tr>
            </c:if>
            <c:if test="${s.count % 2 == 0}">
                <tr bgcolor="red">
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.age}</td>
                    <td>${student.classStudent}</td>
                    <td>${student.classTeacher}</td>
                </tr>
            </c:if>
        </c:forEach>
    </table>
</body>
</html>
