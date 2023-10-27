package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.Cart;
import com.example.oof_badminton.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart, Float> {
    @Query("select c from Cart c where c.user.id = :userId and c.productSize.id = :productSizeId")
    Cart findByUserIdAndProductSizeId(@Param("userId") Float userId, @Param("productSizeId") Float productSizeId);

    List<Cart> findByUser(User user);
;}
