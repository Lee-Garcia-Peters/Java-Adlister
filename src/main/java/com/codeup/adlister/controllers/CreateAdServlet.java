package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        HttpSession session = request.getSession();
        session.setAttribute("createCity", "city");
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) request.getSession().getAttribute("user");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Ad ad = null;
        try {
            ad = new Ad(
                user.getId(),
                Long.parseLong(request.getParameter("typeid")),
                Long.parseLong(request.getParameter("categoryid")),
                request.getParameter("title"),
                request.getParameter("description"),
                    request.getParameter("location"),
                    df.parse(request.getParameter("date"))
            );
        } catch (ParseException e) {
            e.printStackTrace();
        }
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
