package com.example.quan_ly_san_pham_s11.repository;

import com.example.quan_ly_san_pham_s11.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository  {
     public List<Product> productList = new ArrayList<>();

      {
         productList.add(new Product(1, "Product 1", 1000));
         productList.add(new Product(2, "Product 2", 2000));
         productList.add(new Product(3, "Product 3", 3000));
     }

     public ProductRepository() {}

    @Override
    public List<Product> getAllProducts() {
        return productList;
    }

    @Override
    public Product getProductByName(String name) {
          for (Product product : productList) {
              if (product.getName().equalsIgnoreCase(name)) {
                  return product;
              }
          }
          return null;
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
