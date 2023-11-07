package com.example.oof_badminton.controller;

import com.example.oof_badminton.common.BaseResponse;
import com.example.oof_badminton.common.ResponseCodeEnum;
import com.example.oof_badminton.dto.OrderDto;
import com.example.oof_badminton.entity.Order;
import com.example.oof_badminton.entity.User;
import com.example.oof_badminton.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/orders")
@Slf4j
@CrossOrigin
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/create")
    public ResponseEntity<String> createOrder(
            @AuthenticationPrincipal User user, @RequestBody List<OrderDto> orderDto) {
        try {
            orderService.createOrder(user, orderDto);
            return ResponseEntity.ok(ResponseCodeEnum.OK.getMessage());
        } catch (Exception e) {
            log.error("Create Order: " + e);
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @GetMapping("")
    public ResponseEntity<BaseResponse<List<Order>>> getOrders(@AuthenticationPrincipal User user) {
        try {
            return ResponseEntity.ok(BaseResponse.ok(orderService.findAll(user)));
        } catch (Exception e) {
            log.error("Get Order: " + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(e.getMessage()));
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<BaseResponse<List<Order>>> getOrderDetail(@PathVariable Float id) {
        try {
            return ResponseEntity.ok(BaseResponse.ok(orderService.findById(id)));
        } catch (Exception e) {
            log.error("Get Order Detail: " + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(e.getMessage()));
        }
    }
}
