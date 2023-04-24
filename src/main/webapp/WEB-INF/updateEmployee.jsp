<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Set" %><%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 24/04/2023
  Time: 00:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Employee</title>
</head>
<% Employee employee = (Employee) request.getAttribute("employee");%>
<% List<Company> companies = (List<Company>) request.getAttribute("companies");%>
<body>
<a href="/employees"> Back </a>

<h2>Update Employee</h2>
<form action="/updateEmployee" method="post">
    <input name="id" type="hidden" value="<%=employee.getId()%>"><br>
    Name: <input name="name" type="text" value="<%=employee.getName()%>"><br>
    Surname: <input name="surname" type="text" value="<%=employee.getSurname()%>"><br>
    Email: <input name="email" type="text" value="<%=employee.getEmail()%>"><br>
    Company:
    <select name="company">
        <% for (Company company : companies) { %>
        <option ><%= company.getName() + "-" + company.getId()%></option>
        <% }%>
    </select>
    <input type="submit" value="Update">
</form>
</body>
</html>
