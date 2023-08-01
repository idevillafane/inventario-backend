package com.merovingian.data.service;

import com.merovingian.data.model.Product;
import com.merovingian.data.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public List<String> getAllCategories() {
        List<Product> products = productRepository.findAll();
        return products.stream()
                .map(Product::getCategory)
                .distinct()
                .collect(Collectors.toList());
    }

    public List<String> getAllNames() {
        List<Product> products = productRepository.findAll();
        return products.stream()
                .map(Product::getName)
                .distinct()
                .collect(Collectors.toList());
    }

}
