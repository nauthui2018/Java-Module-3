import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        if (username.equals("admin") && password.equals("admin")) {
            writer.println("<h2>Welcome " + username + " to website</h2>");
        } else {
            writer.println("<h2>Login Error</h2>");
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        if (username.equals("admin") && password.equals("admin")) {
            writer.println("<h2>Welcome " + username + " to website</h2>");
        } else {
            writer.println("<h2>Login Error</h2>");
        }
        writer.println("</html>");
    }
}
