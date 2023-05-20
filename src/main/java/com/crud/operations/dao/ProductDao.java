package com.crud.operations.dao;

import java.util.List;

import com.crud.operations.model.Product;

public interface ProductDao {

    public void createProduct(Product product);

    public List<Product> getProducts();

    public Product getProduct(int productId);

    public void deleteProduct(int productId);
}