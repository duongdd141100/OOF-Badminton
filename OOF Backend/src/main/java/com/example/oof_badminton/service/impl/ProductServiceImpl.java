package com.example.oof_badminton.service.impl;

import com.example.oof_badminton.custom_repository.ProductCustomRepository;
import com.example.oof_badminton.entity.Product;
import com.example.oof_badminton.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductCustomRepository productCustomRepo;

    @Override
    public List<Product> findAll(Integer categoryId, Integer supplierId, String searchText, Float minPrice, Float maxPrice) {
        return productCustomRepo.findAll(categoryId, supplierId, searchText, minPrice, maxPrice);
    }
}
