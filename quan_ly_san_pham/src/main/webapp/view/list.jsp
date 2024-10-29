<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/28/2024
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>DANH SÁCH SẢN PHẨM</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>TÊN</th>
        <th>GIÁ</th>
    </tr>


    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td><a href="/products?action=getProduct&name=${product.name}"> ${product.name}</a></td>
            <td>${product.price}</td>
        </tr>

    </c:forEach>


</table>
<a href="/view/addProduct.jsp">Thêm mới sản phẩm</a><br>
<a href="/view/updateProduct.jsp">Sửa thông tin sản phẩm</a><br>
<a href="/view/deleteProduct.jsp">Xóa sản phẩm</a><br>
<a href="/view/searchByName.jsp">Tìm kiếm sản phẩm</a>

</body>
</html>
