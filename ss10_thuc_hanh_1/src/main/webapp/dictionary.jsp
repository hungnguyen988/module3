<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO LOQ
  Date: 10/25/2024
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
  Map<String, String> dic = new HashMap<>();
%>

<%
  dic.put("hello", "Xin chào");
  dic.put("how", "Thế nào");
  dic.put("book", "Quyển vở");
  dic.put("computer", "Máy tính");
  String search = request.getParameter("search");
  String result = dic.get(search);
  if (result != null) {
    System.out.println("Word: " + search);

  } else {
    System.out.println("Not found");
  }
%>
</body>
</html>
