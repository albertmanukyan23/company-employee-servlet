package com.example.companyemployeeservlet.servlet;

import com.example.companyemployeeservlet.manager.EmployeeManager;
import com.example.companyemployeeservlet.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/employees")
public class EmployeesServlet extends HttpServlet {
    private static final EmployeeManager EMPLOYEE_MANAGER = new EmployeeManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Employee> all = EMPLOYEE_MANAGER.getAll();
        req.setAttribute("allEmployees", all);
        req.getRequestDispatcher("WEB-INF/employees.jsp").forward(req,resp);
    }
}
