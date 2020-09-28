<%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/25/20
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Converter</title>
</head>
<body>
    <%
        float input = Float.parseFloat(request.getParameter("input"));
        float output = input*22000;
    %>
    <h2>Currency Converter</h2>
    <form action="index.jsp" method="post">
        <label>USD:</label><br>
        <input name="input" type="text" placeholder="USD" value="<%=input%>"><br><br>
        <label>VND:</label><br>
        <input name="output" type="text" placeholder="VND" value="<%=output%>">
        <input name="clear" type="submit" value="Clear">
    </form>
</body>
</html>
