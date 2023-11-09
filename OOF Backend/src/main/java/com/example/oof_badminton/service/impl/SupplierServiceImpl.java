package com.example.oof_badminton.service.impl;

import com.example.oof_badminton.entity.Supplier;
import com.example.oof_badminton.repository.SupplierRepository;
import com.example.oof_badminton.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    private SupplierRepository supplierRepo;

    @Override
    public List<Supplier> findAll() {
        return supplierRepo.findAll();
    }
}
