<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/29/2024
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>THÔNG TIN USER </h1>
<table border="1">
    <tr>
        <td>ID</td>
        <td>${user.id}</td>
    </tr>
    <tr>
        <td>NAME</td>
        <td>${user.name}</td>
    </tr>
    <tr>
        <td>EMAIL</td>
        <td>${user.email}</td>
    </tr>
    <tr>
        <td>COUNTRY</td>
        <td>${user.country}</td>
    </tr>
</table>
</body>
</html>
