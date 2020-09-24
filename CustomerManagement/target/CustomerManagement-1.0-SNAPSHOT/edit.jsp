<%@ page import="model.Customer" %>
<%@ page import="services.CustomerManagement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="static services.CustomerManagement.customerList" %><%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/24/20
  Time: 8:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Information</title>
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%
        CustomerManagement management = new CustomerManagement();
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = management.getCustomerByID(id);
    %>
    <h2>Update Information</h2>
    <button><a href="index.jsp">Back</a></button>
    <form action="edit" method="post">
        <p>Enter name</p>
        <input name="name" type="text" size="30" value="<%=customer.getName()%>">
        <p>Enter address</p>
        <input name="address" type="text" size="30" value="<%=customer.getAddress()%>">
        <p>Enter email</p>
        <input name="email" type="text" size="30" value="<%=customer.getEmail()%>">
        <input name="id" type="hidden" value="<%=customer.getId()%>">
        <br><br>
        <input type="submit" value="Save">
    </form>

</body>
</html>
