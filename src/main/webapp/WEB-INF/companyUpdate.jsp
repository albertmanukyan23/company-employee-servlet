<%@ page import="com.example.companyemployeeservlet.manager.CompanyManager" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %><%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 23/04/2023
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT</title>
</head>
<%
    Company company = (Company) request.getAttribute("company");%>
<body>
<a href="/companies"> Back </a>

<h2>Update Company</h2>
<form action="/updateCompany" method="post">
    <input name="id" type="hidden" value="<%=company.getId()%>"><br>
    Name: <input name="name" type="text" value="<%=company.getName()%>"><br>
    Country: <input name="country" type="text" value="<%=company.getCountry()%>">
    <input type="submit" value="Update">
</form>
</body>
</html>
