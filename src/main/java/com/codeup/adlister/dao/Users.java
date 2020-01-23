package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    void updateUser(int id, String name, String pass, String email);
    Long insert(User user);
}
