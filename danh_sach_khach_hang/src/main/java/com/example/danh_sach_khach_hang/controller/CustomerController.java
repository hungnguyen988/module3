package com.example.danh_sach_khach_hang.controller;



import com.example.danh_sach_khach_hang.model.Customer;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/model/Customer")
public class CustomerController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("John Doe", "1990-01-01", "New York", "john.jpg"));
        customerList.add(new Customer("Jane Smith", "1985-05-15", "London", "jane.jpg"));
        customerList.add(new Customer("Tom Johnson", "1992-07-07", "Paris", "tom.jpg"));

        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("/view/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
