package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("check");
        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
            session.setAttribute("notFound", true);
            response.sendRedirect("/login");
            return;
        }


        if (username.isEmpty()){
            session.setAttribute("loggedUserEmpty", true);
            if (!password.equals(confirm)){
                session.setAttribute("notMatch", true);
            }
            response.sendRedirect("/login");
            return;
        }
        else {
            session.setAttribute("loginSticky", username);
            session.setAttribute("loggedUserEmpty", false);
            if (!password.equals(confirm)){
                session.setAttribute("notMatch", true);
                response.sendRedirect("/login");
                return;
            }
        }

        boolean validAttempt = Password.check(password, user.getPassword());

        if (validAttempt) {
            session.setAttribute("user", user);
            session.setAttribute("loggedIn", true);
            User get = (User) session.getAttribute("user");
            response.sendRedirect("/profile");
        } else {
            session.setAttribute("loginPassFail", true);
            response.sendRedirect("/login");
        }
    }
}
