package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

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

@WebServlet(name = "controllers.UpdateAdServlet", urlPatterns = "/updateAd")
public class UpdateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/updateAd.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String title = request.getParameter("editTitle");
        String description = request.getParameter("editDescription");
//        session.setAttribute("adid", request.getParameter("other"));
        Date date;
        if (title != null && description != null && request.getParameter("editDate") != null) {
            try {
                date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("editDate"));
                Ad ad = DaoFactory.getAdsDao().getAdById( Integer.parseInt((String)session.getAttribute("id")));
                ad.setTitle(title);
                ad.setDescription(description);
                ad.setDate(date);
                DaoFactory.getAdsDao().updateAd(ad);
                response.sendRedirect("/profile");
            } catch (ParseException e) {
                e.printStackTrace();
            }
        } else {
            response.sendRedirect("/updateAd");
        }
    }
}
