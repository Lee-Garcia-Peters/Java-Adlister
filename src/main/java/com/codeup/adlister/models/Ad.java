package com.codeup.adlister.models;

import java.util.Date;

public class Ad {
    private long id;
    private long userId;
    private long typeId;
    private long categoryId;
    private String title;
    private String description;
    private String location;
    private Date date;


    public Ad(long id, long userId, long typeId, long categoryId, String title, String description, String location, Date date) {
        this.id = id;
        this.userId = userId;
        this.typeId = typeId;
        this.categoryId = categoryId;
        this.title = title;
        this.description = description;
        this.location = location;
        this.date = date;
    }

    public Ad(long userId, long typeId, long categoryId, String title, String description, String location, Date date) {
        this.userId = userId;
        this.typeId = typeId;
        this.categoryId = categoryId;
        this.title = title;
        this.description = description;
        this.location = location;
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getTypeId() { return typeId; }

    public void setTypeId(long typeId) { this.typeId = typeId; }

    public long getCategoryId() {return categoryId;}

    public void setCategoryId(long categoryId) {this.categoryId = categoryId;}

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() { return location;}

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getDate() { return date;}

    public void setDate(Date date) {
        this.date = date;
    }
}
