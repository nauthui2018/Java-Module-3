<%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/23/20
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bang Cuu Chuong</title>
</head>
<style>
    td {
        border: solid 1px black;
        padding: 5px;
    }
    table {
        margin-top: 0;
        border-collapse: collapse;
        padding: 0;
    }
</style>
<body>
    <h2>Bang Cuu Chuong</h2>
    <table>
        <%
            for (int i=1; i<11; i++) {
        %>
        <tr>
            <%
                for (int j = 2; j<10; j++) {
            %>
            <td>
                <%= j + "x" + i + "=" + i*j %>
            </td>
                <% } %>
        </tr>
        <% } %>
        <br>
    </table>

</body>
</html>
