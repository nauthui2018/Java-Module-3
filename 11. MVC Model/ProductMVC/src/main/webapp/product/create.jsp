<%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/28/20
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Create new product</title>
</head>
<body>
    <h2>Create new product</h2>
    <div>
        <c:if test="${requestScope['message'] != null}">
            <p class="message">${requestScope["message"]}</p>
        </c:if>
    </div>
    <div><a href="/products">Back to homepage</a></div>

</body>
</html>
