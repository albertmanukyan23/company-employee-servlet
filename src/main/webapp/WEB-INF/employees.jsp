<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Albert
  Date: 23/04/2023
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<% List<Employee> employees = (List<Employee>) request.getAttribute("allEmployees");%>
<style>
    table, th, td {
        border: 1px solid;
    }
</style>
<body>
<a style="margin-left: 50px" href="/"> Back </a><br>
<h2>Employees</h2>
<a href="/createEmployee">Create Employee</a>

<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>company_id</th>
        <th>Delete/Update</th>

    </tr>
    <% if (employees != null || !employees.isEmpty()) {%>
    <% for (Employee employee : employees) {%>
    <tr>
        <td><%= employee.getId()%>
        </td>
        <td><%= employee.getName()%>
        </td>
        <td><%=employee.getSurname()%>
        </td>
        </td>
        <td><%=employee.getEmail()%>
        </td>
        <td><%=employee.getCompany().getId()%>
        </td>
        <td><a href="/deleteEmployee?id=<%= employee.getId()%>">Delete </a>/ <a
                href="/updateEmployee?id=<%=employee.getId()%>">Update </a></td>
        </td>
    </tr>
    <% }
    }%>


</table>

</body>
</html>
