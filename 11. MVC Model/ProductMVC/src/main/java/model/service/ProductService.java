package model.service;

import model.entity.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();
    void save(Product product);
    Product findByName(String name);
    Product findByCode(String code);
    void edit(String code, Product product);
    void delete(int code);
}
