<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/29/2024
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>THÊM USER MỚI</h1>
<form action="/user?action=insert" method="post">

  Name: <input type="text" name="name"><br>
  Email: <input type="email" name="email"><br>
  Country: <input type="text" name="country"><br>
  <input type="submit" value="Thêm"><br>
  <a href="/user">Quay lại</a>
</form>
</body>
</html>
