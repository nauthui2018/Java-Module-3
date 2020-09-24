import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    public static HashMap<String, User> userList = new HashMap<>();

    public void createData() {
        User u1 = new User("Nguyen A", "a@123", "a123", "a123");
        User u2 = new User("Nguyen B", "b@123", "b123", "b123");
        User u3 = new User("Nguyen C", "c@123", "c123", "b123");
        userList.put(u1.getUserName(), u1);
        userList.put(u2.getUserName(), u2);
        userList.put(u3.getUserName(), u3);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        createData();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter writer = response.getWriter();
        boolean isExist = userList.containsKey(username);
        writer.println("<html>");
        if (isExist) {
            User temp = userList.get(username);
            if (temp.getPassword().equals(password)) {
                writer.println("<h2>Welcome " + temp.getName() + " to website</h2>");
            } else {
                writer.println("<h2>Wrong password</h2>");
            }
        } else {
            writer.println("<h2>Invalid user</h2>");
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
