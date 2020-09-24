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
import java.io.Writer;

@WebServlet(name = "CustomerAddServlet", urlPatterns = "/add")
public class CustomerAddServlet extends HttpServlet {
    Customer customer = new Customer();
    CustomerManagement management = new CustomerManagement();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        PrintWriter writer = response.getWriter();
        management.add(name, address, email);
        writer.println("<html>");
        response.sendRedirect("index.jsp");
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
