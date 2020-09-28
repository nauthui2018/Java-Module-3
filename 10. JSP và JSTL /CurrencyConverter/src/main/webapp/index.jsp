<%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/25/20
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Converter</title>
</head>
<body>
    <h2>Currency Converter</h2>
    <form action="converter.jsp" method="post">
        <label>USD:</label><br>
        <input name="input" type="text" placeholder="USD" value="">
        <input name="converter" type="submit" value="Converter"><br><br>
        <label>VND:</label><br>
        <input name="output" type="text" placeholder="VND" value="">
    </form>
</body>
</html>
