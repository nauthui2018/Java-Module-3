package servlet;

import model.Customer;
import services.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CustomerUpdateServlet", urlPatterns = "/edit")
public class CustomerUpdateServlet extends HttpServlet {
    Customer customer = new Customer();
    CustomerService management = new CustomerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int id = Integer.parseInt(request.getParameter("id"));
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        PrintWriter writer = response.getWriter();
        management.update(id, name, address, email);
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        response.sendRedirect("edit.jsp?id="+ id);
    }
}
