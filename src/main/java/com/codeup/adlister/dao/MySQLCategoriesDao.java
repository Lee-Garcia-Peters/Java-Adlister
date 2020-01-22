package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao  implements Categories{
    private Connection connection = null;

    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database.");
        }
    }

    @Override
    public List<Category> all(String type) {
        PreparedStatement stmt = null;
        int typeId = 0;
        if (type != null) {
            switch (type) {
                case "buy":
                case "sell":
                    typeId = 1;
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
            stmt = connection.prepareStatement("SELECT * FROM categories WHERE type_id = '"+ typeId + "'");
            ResultSet rs = stmt.executeQuery();
            return createCategoriesFromResults(rs);

        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving categories.", e);
        }
    }

    private Category extractCategory(ResultSet rs) throws SQLException {
        return new Category(
                rs.getLong("id"),
                rs.getLong("type_id"),
                rs.getString("name")
        );
    }

    private List<Category> createCategoriesFromResults(ResultSet rs) throws SQLException {
        List<Category> categories = new ArrayList<>();
        while (rs.next()) {
            categories.add(extractCategory(rs));
        }
        return categories;
    }
}
