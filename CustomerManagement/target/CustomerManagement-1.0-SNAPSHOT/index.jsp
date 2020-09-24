<%@ page import="model.Customer" %>
<%@ page import="services.CustomerManagement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="static services.CustomerManagement.customerList" %><%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/24/20
  Time: 8:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customers</title>
    <style>
        table {
            border-collapse: collapse;
            padding: 0;
            margin-top: 10px;
        }
        td {
            border-collapse: collapse;
            border: solid 1px black;
            height: auto;
            width: auto;
            padding: 5px;
        }
        th {
            border-collapse: collapse;
            border: solid 1px black;
            height: auto;
            width: auto;
            padding: 5px;
            font-weight: bold;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%
        Customer customer = new Customer();
        CustomerManagement management = new CustomerManagement();
        ArrayList<Customer> list = new ArrayList<>(customerList.values());
    %>
    <h2>Customer List</h2>
    <button><a href="add.jsp">Add new customer</a></button>
    <table>
        <tr>
            <th>Full Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <%
            for (Customer item: list) {
                if (item != null) {
        %>
        <tr>
            <td><%=item.getName()%></td>
            <td><%=item.getAddress()%></td>
            <td><%=item.getEmail()%></td>
            <td>
                <button><a href="edit?id=<%=item.getId()%>">Edit</a></button>
                <button><a href="delete?id=<%=item.getId()%>">Delete</a></button>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</body>
</html>
