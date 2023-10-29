package com.example.oof_badminton.service.impl;

import com.example.oof_badminton.common.OrderStatusEnum;
import com.example.oof_badminton.dto.OrderDto;
import com.example.oof_badminton.entity.Order;
import com.example.oof_badminton.entity.OrderProduct;
import com.example.oof_badminton.entity.ProductSize;
import com.example.oof_badminton.entity.User;
import com.example.oof_badminton.repository.OrderRepository;
import com.example.oof_badminton.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepo;

    @Override
    @Transactional
    public Order createOrder(User user, List<OrderDto> orderDto) {
        if (CollectionUtils.isEmpty(orderDto)) {
            throw new RuntimeException("There is no product!");
        }
        // Create order
        Order order = new Order();
        order.setUser(user);
        order.setStatus(OrderStatusEnum.DELIVERING.getId());
        order.setOrderProducts(new ArrayList<>());

        // Create Order product
        orderDto.stream().forEach(x -> {
            OrderProduct orderProduct = new OrderProduct();
            orderProduct.setProductSize(new ProductSize());
            orderProduct.getProductSize().setId(x.getProductSizeId());
            orderProduct.setQuantity(x.getQuantity());
            orderProduct.setNote(x.getNote());
            orderProduct.setOrder(order);
            order.getOrderProducts().add(orderProduct);
        });
        return orderRepo.save(order);
    }
}
