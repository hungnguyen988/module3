package com.example.danh_sach.repository;

import com.example.danh_sach.model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository  {

    private static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer(1,"John Doe", "1990-01-01", "New York", "/img/1.png"));
        customerList.add(new Customer(2,"Jane Smith", "1985-05-15", "London", "/img/anh-dep-44.jpg.webp"));
        customerList.add(new Customer(3,"Tom Johnson", "1992-07-07", "Paris", "/img/2.jpg"));
    }

    public CustomerRepository() {
    }

    public List<Customer> getAllCustomer() {
        return customerList;

    }

    public List<Customer> addCustomer(Customer customer) {
        customerList.add(customer);
        return customerList;
    }
}
