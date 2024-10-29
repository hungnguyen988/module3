<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/28/2024
  Time: 8:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>TÌM SẢN PHẨM THEO TÊN</h1>
<form action="/products?action=searchByName" method="post">
    Tên sản phẩm: <input type="text" name="name"><br>
    <input type="submit" value="Tìm"><br>
    <a href="/products?action=">Quay lại</a>
</form>
</body>
</html>
