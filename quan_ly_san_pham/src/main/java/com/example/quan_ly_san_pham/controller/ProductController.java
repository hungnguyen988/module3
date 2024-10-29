package com.example.quan_ly_san_pham.controller;

import com.example.quan_ly_san_pham.model.Product;
import com.example.quan_ly_san_pham.service.IProductService;
import com.example.quan_ly_san_pham.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/products")
public class ProductController extends HttpServlet {
    IProductService productService = new ProductService();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addProduct":
                addProduct(req, resp);
                break;
            case "deleteProduct":
                deleteProduct(req, resp);
                break;

            case "updateProduct":
                updateProduct(req, resp);
                break;

                case "searchByName":
                    getProductByName(req, resp);
                break;

            default:
                showList(req, resp);
        }
    }

    private void addProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        productService.addProduct(new Product(id, name, price));
        resp.sendRedirect("/products");


    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        productService.deleteProduct(id);
        resp.sendRedirect("/products");
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        productService.updateProduct(id, name, price);
        resp.sendRedirect("/products");
    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "getProduct":
                getProductByName(req, resp);
                break;

            default:
                showList(req, resp);
                break;

        }

    }

    private void showList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productList = productService.getAllProducts();
        req.setAttribute("productList", productList);
        req.getRequestDispatcher("view/list.jsp").forward(req, resp);
    }


    private void getProductByName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        Product product = productService.getProductByName(name);
        req.setAttribute("product", product);
        req.getRequestDispatcher("view/getProduct.jsp").forward(req, resp);
    }
}

