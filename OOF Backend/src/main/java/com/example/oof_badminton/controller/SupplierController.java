package com.example.oof_badminton.controller;

import com.example.oof_badminton.common.BaseResponse;
import com.example.oof_badminton.entity.Supplier;
import com.example.oof_badminton.service.SupplierService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/suppliers")
@Slf4j
@CrossOrigin
public class SupplierController {

    @Autowired
    private SupplierService supplierService;

    @GetMapping("")
    public ResponseEntity<BaseResponse<List<Supplier>>> findAll() {
        try {
            return ResponseEntity.ok(BaseResponse.ok(supplierService.findAll()));
        } catch (Exception e) {
            log.error("Get All supplier:" + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(e.getMessage()));
        }
    }
}
