<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 24/04/2023
  Time: 03:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Employee</title>
</head>

<% List<Company> companies = (List<Company>) request.getAttribute("companies");%>

<body>
<form action="/createEmployee" method="post">
    Name: <input name="name" type="text"><br>
    Surname: <input name="surname" type="text"><br>
    Email: <input name="email" type="text"><br>
    Company:
    <select name="company">
        <% for (Company company : companies) { %>
        <option value="<%=company.getId()%>"><%= company.getName()%>
        </option>
        <% }%>
    </select>
    <input type="submit" value="Add">
</form>

</body>
</html>
