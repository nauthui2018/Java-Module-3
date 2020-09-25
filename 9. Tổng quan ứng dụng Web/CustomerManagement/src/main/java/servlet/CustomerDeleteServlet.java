package servlet;

import model.Customer;
import services.CustomerManagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CustomerDeleteServlet", urlPatterns = "/delete")
public class CustomerDeleteServlet extends HttpServlet {
    Customer customer = new Customer();
    CustomerManagement management = new CustomerManagement();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        management.delete(id);
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        response.sendRedirect("index.jsp");
        writer.println("</html>");
    }
}
