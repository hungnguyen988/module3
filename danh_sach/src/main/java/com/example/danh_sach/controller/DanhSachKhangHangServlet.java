package com.example.danh_sach.controller;

import com.example.danh_sach.model.Customer;
import com.example.danh_sach.service.CustomerService;
import com.example.danh_sach.service.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DanhSachKhangHangServlet", urlPatterns = "/danh-sach-khach-hang")

public class DanhSachKhangHangServlet extends HttpServlet {
    ICustomerService customerService = new CustomerService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Customer> customerList = customerService.getAllCustomer();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
