package model.service;

import model.entity.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static HashMap<String, Product> products;

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getCode(), product);
    }

    @Override
    public Product findByName(String name) {
        List<Product> products = findAll();
        Product product = new Product();
        for (Product item: products) {
            if (item.getName().equals(name)) {
                product = item;
                break;
            }
        }
        return product;
    }

    @Override
    public Product findByCode(String code) {
        return products.get(code);
    }

    @Override
    public void edit(String code, Product product) {
        products.put(code, product);
    }

    @Override
    public void delete(int code) {
        products.remove(code);
    }
}
