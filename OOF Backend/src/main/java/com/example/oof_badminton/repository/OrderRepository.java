package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Float> {
}
