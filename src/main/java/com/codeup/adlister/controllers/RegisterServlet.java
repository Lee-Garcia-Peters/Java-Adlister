package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.setAttribute("userEmpty", false);
        session.setAttribute("emailEmpty", false);
        session.setAttribute("passwordEmpty", false);
        session.setAttribute("notMatch", false);
        session.setAttribute("userCreated", false);
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        User user = new User(username, email, password);

        if (username.isEmpty()) {
            session.setAttribute("userEmpty", true);
        }
        if (email.isEmpty()) {
            session.setAttribute("emailEmpty", true);
        }
        if (password.isEmpty()) {
            session.setAttribute("passwordEmpty", false);
        }
        if (!password.equals(passwordConfirmation)) {
            session.setAttribute("notMatch", true);
        }
        if (!username.isEmpty() && !email.isEmpty() && !password.isEmpty() && password.equals(passwordConfirmation)) {
            if (DaoFactory.getUsersDao().findByUsername(username) == null) {
                DaoFactory.getUsersDao().insert(user);
                session.setAttribute("userCreated", true);
            } else {
                session.setAttribute("userAlready", true);
            }
            response.sendRedirect("/login");
        }
    }
}
