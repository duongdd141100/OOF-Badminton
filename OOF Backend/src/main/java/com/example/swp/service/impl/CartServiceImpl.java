package com.example.swp.service.impl;

import com.example.swp.common.ErrorMessageEnum;
import com.example.swp.entity.Cart;
import com.example.swp.entity.User;
import com.example.swp.repository.CartRepository;
import com.example.swp.repository.ProductSizeRepository;
import com.example.swp.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

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

    @Override
    public List<Cart> getCart(User user) {
        return cartRepo.findByUser(user).stream().map(x -> {
            x.setUser(null);
            x.getProductSize().getProduct().setComments(null);
            x.getProductSize().getProduct().setProductSizes(null);
            x.getProductSize().getProduct().setCategory(null);
//            x.getProductSize().getProduct().getSupplier().setProducts(new ArrayList<>());
//            x.getProductSize().setCarts(new ArrayList<>());
            return x;
        }).collect(Collectors.toList());
    }

    @Override
    @Transactional
    public void delete(List<Float> cartId) {
        cartRepo.deleteAllById(cartId);
    }
}
