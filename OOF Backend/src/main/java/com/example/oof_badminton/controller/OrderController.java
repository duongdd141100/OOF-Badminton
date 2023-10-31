package com.example.oof_badminton.controller;

import com.example.oof_badminton.common.BaseResponse;
import com.example.oof_badminton.common.ResponseCodeEnum;
import com.example.oof_badminton.dto.OrderDto;
import com.example.oof_badminton.entity.User;
import com.example.oof_badminton.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/orders")
@Slf4j
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/create")
    public ResponseEntity<BaseResponse<String>> createOrder(
            @AuthenticationPrincipal User user, @RequestBody List<OrderDto> orderDto) {
        try {
            orderService.createOrder(user, orderDto);
            return ResponseEntity.ok(BaseResponse.ok(ResponseCodeEnum.OK.getMessage()));
        } catch (Exception e) {
            log.error("Create Order: " + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(e.getMessage()));
        }
    }
}
