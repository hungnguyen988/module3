<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/25/2024
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<table border="1">
  <tr>
    <th>Tên</th>
    <th>Ngày sinh</th>
    <th>Địa chỉ</th>
    <th>Ảnh</th>
  </tr>
  <c:forEach var="customer" items="${customerList}">
    <tr>
      <td>${customer.name}</td>
      <td>${customer.birthdate}</td>
      <td>${customer.address}</td>
      <td><img src="${customer.image}"  width="100" height="100" /></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
