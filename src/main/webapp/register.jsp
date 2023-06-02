<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign in</title>
</head>
<body>
<form action="/login" method="post">
    email: <input name="email" type="text"><br>
    Password: <input name="password" type="password"><br>
    <input type="submit" value="login">
</form>
<a href="/register.jsp"> Sign in</a>

</body>
</html>