package com.example.oof_badminton.dto;

import lombok.Data;

import java.util.List;

@Data
public class OrderWithOrderProductDto {
    private OrderDto order;
    private List<OrderProductDto> orderProducts;
}
