package com.example.danh_sach.model;

public class Customer {
    private int id;
    private String name;
    private String birthdate;
    private String address;
    private String image;

    public Customer(int id,String name, String birthdate, String address, String image) {
        this.id = id;
        this.name = name;
        this.birthdate = birthdate;
        this.address = address;
        this.image = image;
    }

    // Getters
    public int getId() { return id; }
    public String getName() { return name; }
    public String getBirthdate() { return birthdate; }
    public String getAddress() { return address; }
    public String getImage() { return image; }
}
