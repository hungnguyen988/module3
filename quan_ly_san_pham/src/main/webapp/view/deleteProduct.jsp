<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/28/2024
  Time: 4:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>XÓA SẢN PẨM</h1>
<form action="/products?action=deleteProduct" method="post">
    Id: <input type="text" name="id"><br>
    <input type="submit" value="Xóa"><br>
    <a href="/products?action=">Quay lại</a>
</form>
</body>
</html>
