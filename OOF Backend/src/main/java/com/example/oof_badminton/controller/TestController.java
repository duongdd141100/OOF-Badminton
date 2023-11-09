package com.example.oof_badminton.controller;

import com.example.oof_badminton.common.BaseResponse;
import com.example.oof_badminton.dto.ProductDto;
import com.example.oof_badminton.repository.ProductRepository;
import com.example.oof_badminton.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/test")
@Slf4j
@CrossOrigin
public class TestController {
    @Autowired
    private ProductRepository productRepo;
    @Autowired
    private ProductService productService;
    @GetMapping("")
    public ResponseEntity<BaseResponse<List<ProductDto>>> getProduct(
            @RequestParam(name = "categoryId", required = false) Integer categoryId,
            @RequestParam(name = "supplierId", required = false) Integer supplierId,
            @RequestParam(name = "searchText", required = false) String searchText,
            @RequestParam(name = "minPrice", required = false) Float minPrice,
            @RequestParam(name = "maxPrice", required = false) Float maxPrice
    ) {
        try {
            return ResponseEntity.ok(BaseResponse.ok(productService.findAll(categoryId, supplierId, searchText, minPrice, maxPrice)));
        } catch (Exception e) {
            log.error("Get product: " + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(e.getMessage()));
        }
    }
}
