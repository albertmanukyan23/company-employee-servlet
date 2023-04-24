package com.example.companyemployeeservlet.servlet;

import com.example.companyemployeeservlet.manager.CompanyManager;
import com.example.companyemployeeservlet.manager.EmployeeManager;
import com.example.companyemployeeservlet.model.Company;
import com.example.companyemployeeservlet.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/updateEmployee")
public class UpdateEmployeeServlet extends HttpServlet {
    private static final EmployeeManager EMPLOYEE_MANAGER = new EmployeeManager();
    private static final CompanyManager COMPANY_MANAGER = new CompanyManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Employee employee = EMPLOYEE_MANAGER.getById(id);
        List<Company> companies = COMPANY_MANAGER.getAll();
        req.setAttribute("employee", employee);
        req.setAttribute("companies", companies);
        req.getRequestDispatcher("WEB-INF/updateEmployee.jsp").forward(req,resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name =  req.getParameter("name");
        String surname =  req.getParameter("surname");
        String email =  req.getParameter("email");
        String [] data= req.getParameter("company").split("-");
        Company company = COMPANY_MANAGER.getById(Integer.parseInt(data[1]));
        Employee employee = new Employee(id,name,surname,email,company);
        EMPLOYEE_MANAGER.update(employee);
        resp.sendRedirect("/employees");
    }
}
