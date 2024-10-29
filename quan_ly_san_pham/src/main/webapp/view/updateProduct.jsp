<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/28/2024
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>CẬP NHẬT SẢN PHẨM</h1>
<form action="/products?action=updateProduct" method="post">
    Id: <input type="text" name="id"><br>
    Name: <input type="text" name="name" %><br>
    Price: <input type="text" name="price"><br>
    <input type="submit" value="Cập nhật"><br>
    <a href="/products?action=">Quay lại</a>
</form>
</body>
</html>
