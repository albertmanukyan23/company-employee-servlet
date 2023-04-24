<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %><%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 23/04/2023
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Companies</title>
</head>
<% List<Company> companies = (List<Company>) request.getAttribute("allCompanies");%>
<style>
    table, th, td {
        border: 1px solid;
    }
</style>

<body>
<a style="margin-left: 50px" href="/"> Back </a>
<h2>Companies</h2> <a href="/createCompany">Create Company</a>

<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>country</th>
        <th>Delete/Update</th>
    </tr>
    <% if (companies != null || !companies.isEmpty()) {%>
    <% for (Company company : companies) {%>
    <tr>
        <td><%= company.getId()%>
        </td>
        <td><%= company.getName()%>
        </td>
        <td><%=company.getCountry()%>
        </td>
        <td><a href="/deleteCompany?id=<%= company.getId()%>">Delete </a>/ <a
                href="/updateCompany?id=<%=company.getId()%>">Update </a></td>
        </td>
    </tr>
    <% }
    }%>


</table>


</body>
</html>
