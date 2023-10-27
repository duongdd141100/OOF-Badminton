package com.example.oof_badminton.service;

import com.example.oof_badminton.entity.Cart;
import com.example.oof_badminton.entity.User;

public interface CartService {
    Cart insert(User user, Cart cart);
}
