<%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 10/1/20
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>Searching Result</h1>
    <form action="/users?action=search" method="post">
        <input type="text" name="search" id="search" size="45" value="${requestScope["search"]}"/>
        <input type="submit" value="Search"/>
    </form>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
            </tr>
        </c:forEach>
    </table>
    <h2>
        <a href="/users">Back to homepage</a>
    </h2>
</div>
</body>
</html>
