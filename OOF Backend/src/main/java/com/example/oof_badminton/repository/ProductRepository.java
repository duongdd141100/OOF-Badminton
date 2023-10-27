package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Float> {
}
