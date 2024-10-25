package com.example.danh_sach.repository;

import com.example.danh_sach.model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> getAllCustomer();
    List<Customer> addCustomer(Customer customer);
}
