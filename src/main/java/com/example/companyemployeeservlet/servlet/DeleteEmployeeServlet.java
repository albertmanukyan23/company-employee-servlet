package com.example.companyemployeeservlet.servlet;

import com.example.companyemployeeservlet.manager.EmployeeManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/deleteEmployee")
public class DeleteEmployeeServlet extends HttpServlet {
    private static final EmployeeManager EMPLOYEE_MANAGER = new EmployeeManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        EMPLOYEE_MANAGER.removeById(id);
        resp.sendRedirect("/employees ");
    }
}
