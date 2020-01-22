package com.codeup.adlister.models;

public class Category {
    private long id;
    private long typeId;
    private String name;

    public Category(long id, long typeId, String name) {
        this.id = id;
        this.name = name;
        this.typeId = typeId;
    }

    public long getId(){
        return id;
    }

    public void setId(long id){
        this.id = id;
    }

    public long getTypeId() {return typeId;}

    public void setTypeId(long typeId) { this.typeId = typeId; }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }
}
