package com.example.quan_ly_san_pham.repository;

import com.example.quan_ly_san_pham.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> getAllProducts();
    Product getProductByName(String name);
    void addProduct(Product product);
    void updateProduct(int id,String name, double price);
    void deleteProduct(int id);
}
