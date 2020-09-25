<%--
  Created by IntelliJ IDEA.
  User: NguyenVanHuong
  Date: 9/23/20
  Time: 8:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<style type="text/css">
    .login {
        height:180px; width:230px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
    }
    .login input {
        padding:5px; margin:5px
    }
</style>
<body>
    <form method="post" action="login">
        <div class="login">
            <h2>Login</h2>
            <input type="text" placeholder="username" name="username", size="30">
            <input type="password" placeholder="password" name="password" size="30">
            <input type="submit", value="Sign in">
        </div>
    </form>
</body>
</html>
