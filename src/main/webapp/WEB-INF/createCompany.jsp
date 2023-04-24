<%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 23/04/2023
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Company</title>
</head>
<body>
<h2>Add Company</h2>
<form action="/createCompany" method="post">
    Name: <input name="name" type="text"><br>
    Country: <input name="country" type="text"><br>
    <input type="submit" value="add">
</form>


</body>
</html>
