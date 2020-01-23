package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all(String type, String place) {
        PreparedStatement stmt = null;
        int typeId = 0;
        if (type != null) {
            switch (type) {
                case "buy":
                    typeId = 1;
                    break;
                case "sell":
                    typeId = 2;
                    break;
                case "housing":
                    typeId = 3;
                    break;
                case "jobs":
                    typeId = 4;
                    break;
            }
        }
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE type_id = '"+ typeId+"' AND location = '" + place +"'");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> getUserAds(int id){
        PreparedStatement stmt;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE user_id = '"+ id+"'");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        java.sql.Date sql = new java.sql.Date(ad.getDate().getTime());
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, location, type_id, category_id, date) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getLocation());
            stmt.setLong(5, ad.getTypeId());
            stmt.setLong(6, ad.getCategoryId());
            stmt.setDate(7, sql);
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getLong("type_id"),
            rs.getLong("category_id"),
            rs.getString("title"),
            rs.getString("description"),
                rs.getString("location"),
                rs.getDate("date")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
