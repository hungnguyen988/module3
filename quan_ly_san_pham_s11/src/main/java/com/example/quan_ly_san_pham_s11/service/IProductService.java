package com.example.quan_ly_san_pham_s11.service;

import com.example.quan_ly_san_pham_s11.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAllProducts();
    Product getProductByName(String name);
    void addProduct(Product product);
    void updateProduct(Product product);
    void deleteProduct(int id);
}
