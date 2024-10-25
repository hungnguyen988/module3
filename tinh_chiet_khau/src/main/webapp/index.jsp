<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Tính chiết khấu sản phẩm</h1>
<form action="/tinh-chiet-khau" method="post">
    <label for="mo-ta-san-pham">Giá sản phẩm:</label>
    <input type="text" id="mo-ta-san-pham" name="mo-ta" required>
    <br/>
    <label for="gia-san-pham">Giá sản phẩm:</label>
    <input type="number" id="gia-san-pham" name="gia" required>
    <br/>
    <label for="phan-tram-chiet-khau">Phần trăm chiết khấu:</label>
    <input type="number" id="phan-tram-chiet-khau" name="phan-tram-chiet-khau" required>
    <br/>
    <input type="submit" value="Tính chiết khấu">
</form>
</form>
</body>
</html>