package com.example.oof_badminton.service;

import com.example.oof_badminton.dto.OrderWithOrderProductDto;
import com.example.oof_badminton.entity.Order;
import com.example.oof_badminton.entity.User;

import java.util.List;

public interface OrderService {
    Order createOrder(User user, List<Float> cartIds);

    List<OrderWithOrderProductDto> findAll(User user);

    Order findById(Float id);
}
