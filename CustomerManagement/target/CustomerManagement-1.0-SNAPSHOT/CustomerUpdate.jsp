<%@ page import="model.Customer" %>
<%@ page import="services.CustomerManagement" %>
<%@ page import="java.util.ArrayList" %><%--
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
    <%
        Customer customer = new Customer();
        CustomerManagement management = new CustomerManagement();
        ArrayList<Customer> list = management.getList();
    %>
    <h2>Update Customer</h2>
    <button><a href="index.jsp">Back</a></button>
    <form action="${pageContext.request.contextPath}/edit" method="get">
        <p>Enter name</p>
        <input name="name" type="text" size="30" placeholder="full name" value="<%=item.getId()%>">
        <p>Enter address</p>
        <input name="address" type="text" size="30" placeholder="address">
        <p>Enter email</p>
        <input name="email" type="text" size="30" placeholder="email">
        <br><br>
        <input type="submit" value="Submit">
    </form>



</body>
</html>
