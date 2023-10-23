package com.example.oof_badminton.service;

import com.example.oof_badminton.entity.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll(Integer categoryId, Integer supplierId, String searchText, Float minPrice, Float maxPrice);
}
