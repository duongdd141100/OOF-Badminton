package com.example.oof_badminton.controller;

import com.example.oof_badminton.common.BaseResponse;
import com.example.oof_badminton.common.ResponseCodeEnum;
import com.example.oof_badminton.entity.Cart;
import com.example.oof_badminton.entity.User;
import com.example.oof_badminton.service.CartService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cart")
@Slf4j
public class CartController {

    @Autowired
    private CartService cartService;

    @PostMapping("/add")
    public ResponseEntity<BaseResponse<String>> add(@AuthenticationPrincipal User user, @RequestBody Cart cart) {
        try {
            cartService.insert(user, cart);
            return ResponseEntity.ok(BaseResponse.ok(ResponseCodeEnum.OK.getMessage()));
        } catch (Exception e) {
            log.error("Add Product to cart: " + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(e.getMessage()));
        }
    }

    @GetMapping("")
    public ResponseEntity<BaseResponse<List<Cart>>> cart(@AuthenticationPrincipal User user) {
        try {
            return ResponseEntity.ok(BaseResponse.ok(cartService.getCart(user)));
        } catch (Exception e) {
            log.error("Get Cart: " + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(e.getMessage()));
        }
    }
}
