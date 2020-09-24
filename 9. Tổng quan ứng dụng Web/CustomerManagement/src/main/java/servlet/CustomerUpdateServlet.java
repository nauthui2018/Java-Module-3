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

import static services.CustomerManagement.customerList;

@WebServlet(name = "CustomerUpdateServlet", urlPatterns = "/CustomerUpdate.jsp")
public class CustomerUpdateServlet extends HttpServlet {
    Customer customer = new Customer();
    CustomerManagement management = new CustomerManagement();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer temp = customerList.get(id);
        String name = temp.getName();
        String address = temp.getAddress();
        String email = temp.getEmail();
        PrintWriter writer = response.getWriter();
        management.update(id, name, address, email);
        writer.println("<html>");
        response.sendRedirect("index.jsp");
        writer.println("</html>");
    }
}
