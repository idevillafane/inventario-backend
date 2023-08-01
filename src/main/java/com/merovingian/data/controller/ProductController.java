package com.merovingian.data.controller;

import com.merovingian.data.model.Product;
import com.merovingian.data.repository.ProductRepository;
import com.merovingian.data.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/products")
public class ProductController {
    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ProductService productService;


    @GetMapping
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    @PostMapping
    public Product addProduct(@RequestBody Product product) {
        return productRepository.save(product);
    }

    @GetMapping("/categories")
    public ResponseEntity<List<String>> getAllCategories() {
        List<String> categories = productService.getAllCategories();
        return ResponseEntity.ok(categories);
    }

    @GetMapping("/names")
    public ResponseEntity<List<String>> getAllNames() {
        List<String> names = productService.getAllNames();
        return ResponseEntity.ok(names);
    }

    @PostMapping("/{productId}/updateQuantity")
    public ResponseEntity<Product> updateProductQuantity(@PathVariable Long productId, @RequestParam("operation") String operation, @RequestBody int quantity) {
        Product product = productRepository.findById(productId).orElse(null);
        System.out.println(operation);
        System.out.println(quantity);
        System.out.println(productId);
        if (product != null) {
            if ("ingreso".equalsIgnoreCase(operation)){
                product.setQuantity(product.getQuantity()+quantity);
            } else if ("venta".equalsIgnoreCase(operation)) {
                product.setQuantity(product.getQuantity()-quantity);
            } else if ("corrección".equalsIgnoreCase(operation)) {
                product.setQuantity(product.getQuantity()+quantity);
            }

            Product savedProduct = productRepository.save(product);
            return ResponseEntity.ok(savedProduct);
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
