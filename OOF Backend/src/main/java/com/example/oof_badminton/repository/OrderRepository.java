package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.Order;
import com.example.oof_badminton.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Float> {
    List<Order> findAllByUserOrderByStatusAscCreatedDateDesc(User user);
}
