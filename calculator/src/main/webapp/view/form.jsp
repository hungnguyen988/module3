<%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/25/2024
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="/calculator" method="post">
  Fisrt number: <input type="text" name="num1"><br>
    Operator: <select name="operator">
    <option value="+">+</option>
    <option value="-">-</option>
    <option value="*">*</option>
    <option value="/">/</option>
    </select><br>
    Second number: <input type="text" name="num2"><br>
    <input type="submit" value="Calculate">
  </form>
</body>
</html>
