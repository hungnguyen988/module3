package com.example.danh_sach.service;

import com.example.danh_sach.model.Customer;
import com.example.danh_sach.repository.CustomerRepository;
import com.example.danh_sach.repository.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService  {
ICustomerRepository customerRepository=new CustomerRepository();
public CustomerService(){};
    @Override
    public List<Customer> getAllCustomer() {
         return customerRepository.getAllCustomer();
    }

    @Override
    public List<Customer> addCustomer(Customer customer) {
        return customerRepository.addCustomer(customer);
    }
}
