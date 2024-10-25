package com.example.danh_sach.service;

import com.example.danh_sach.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> getAllCustomer();
    List<Customer> addCustomer(Customer customer);
}
