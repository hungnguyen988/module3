package com.example.quan_ly_san_pham.service;

import com.example.quan_ly_san_pham.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAllProducts();
    Product getProductByName(String name);
    void addProduct(Product product);
    void updateProduct(int id ,String newName, double newPrice);
    void deleteProduct(int id);
}
