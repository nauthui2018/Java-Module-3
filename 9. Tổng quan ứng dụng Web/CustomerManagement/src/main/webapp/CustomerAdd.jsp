<%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/24/20
  Time: 8:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new customer</title>
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h2>Add New Customer</h2>
    <button><a href="index.jsp">Back</a></button>
    <form action="${pageContext.request.contextPath}/add" method="post">
        <p>Enter name</p>
        <input name="name" type="text" size="30" placeholder="full name">
        <p>Enter address</p>
        <input name="address" type="text" size="30" placeholder="address">
        <p>Enter email</p>
        <input name="email" type="text" size="30" placeholder="email">
        <br><br>
        <input type="submit" value="Submit">
    </form>



</body>
</html>
