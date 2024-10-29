package com.example.quan_ly_san_pham_s11.controller;

import com.example.quan_ly_san_pham_s11.model.Product;
import com.example.quan_ly_san_pham_s11.service.IProductService;
import com.example.quan_ly_san_pham_s11.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/products"  )
public class ProductController extends HttpServlet {
    IProductService productService = new ProductService();



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productList = productService.getAllProducts();
        req.setAttribute("productList", productList);
        req.getRequestDispatcher("view/list.jsp").forward(req, resp);
    }
}
