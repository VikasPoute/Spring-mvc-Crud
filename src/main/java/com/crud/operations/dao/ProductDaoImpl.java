package com.crud.operations.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.crud.operations.model.Product;

@Component
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    // Create a new Product
    @Transactional
    public void createProduct(Product product) {
        hibernateTemplate.saveOrUpdate(product);
    }

    // Get a list of products
    public List<Product> getProducts() {
        return this.hibernateTemplate.loadAll(Product.class);
    }

    // get a single product
    public Product getProduct(int productId) {
        return this.hibernateTemplate.get(Product.class, productId);
    }

    // Delete a product
    @Transactional
    public void deleteProduct(int productId) {
        Product product = this.hibernateTemplate.load(Product.class, productId);
        hibernateTemplate.delete(product);
    }

}
