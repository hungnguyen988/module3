package com.example.quan_ly_san_pham_s11.service;

import com.example.quan_ly_san_pham_s11.model.Product;
import com.example.quan_ly_san_pham_s11.repository.IProductRepository;
import com.example.quan_ly_san_pham_s11.repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService  {
    public IProductRepository productRepository = new ProductRepository() ; // Replace with actual implementation;

    @Override
    public List<Product> getAllProducts() {
        return productRepository.getAllProducts()  ;
    }

    @Override
    public Product getProductByName(String name) {
        return productRepository.getProductByName(name)  ;
    }

    @Override
    public void addProduct(Product product) {

    }

    @Override
    public void updateProduct(Product product) {

    }

    @Override
    public void deleteProduct(int id) {

    }
}
