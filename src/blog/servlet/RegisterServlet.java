package blog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blog.dao.UserDao;
import blog.daoImpl.UserDaoImpl;
import blog.model.User;
import blog.utils.LoginUtils;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the register page
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");


        if (username == null || password == null) {
            request.setAttribute("registrationFail", true);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        UserDao userDao = UserDaoImpl.getInstance();

        boolean registrationSuccess = userDao.register(username, password);

        if (registrationSuccess) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        } else {
            request.setAttribute("registrationFail", true);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
}
