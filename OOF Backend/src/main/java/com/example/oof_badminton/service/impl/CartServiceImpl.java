package com.example.oof_badminton.service.impl;

import com.example.oof_badminton.common.ErrorMessageEnum;
import com.example.oof_badminton.entity.Cart;
import com.example.oof_badminton.entity.User;
import com.example.oof_badminton.repository.CartRepository;
import com.example.oof_badminton.repository.ProductSizeRepository;
import com.example.oof_badminton.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartRepository cartRepo;

    @Autowired
    private ProductSizeRepository productSizeRepos;

    @Override
    public Cart insert(User user, Cart cart) {
        if (cart.getQuantity() > productSizeRepos.findById(cart.getProductSize().getId()).get().getStockQuantity()) {
            throw new RuntimeException(ErrorMessageEnum.TOO_BIG_QUANTITY.getMessage());
        }
        Cart cartExist = cartRepo.findByUserIdAndProductSizeId(user.getId(), cart.getProductSize().getId());
        if (cartExist != null) {
            cartExist.setQuantity(cartExist.getQuantity() + cart.getQuantity());
            cartRepo.save(cartExist);
            return cartExist;
        } else {
            cart.setUser(user);
            cartRepo.save(cart);
            return cart;
        }
    }
}
