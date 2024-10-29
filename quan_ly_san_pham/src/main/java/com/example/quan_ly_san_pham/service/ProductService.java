package com.example.quan_ly_san_pham.service;

import com.example.quan_ly_san_pham.model.Product;
import com.example.quan_ly_san_pham.repository.IProductRepository;
import com.example.quan_ly_san_pham.repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    public IProductRepository productRepository = new ProductRepository(); // Replace with actual implementation;

    @Override
    public List<Product> getAllProducts() {
        return productRepository.getAllProducts();
    }

    @Override
    public Product getProductByName(String name) {
        return productRepository.getProductByName(name);
    }

    @Override
    public void addProduct(Product product) {
        productRepository.addProduct(product);
    }

    @Override
    public void updateProduct(int id, String newName, double newPrice) {
        productRepository.updateProduct(id, newName, newPrice);
    }

    @Override
    public void deleteProduct(int id) {
        productRepository.deleteProduct(id);
    }
}
