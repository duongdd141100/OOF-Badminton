package com.example.oof_badminton.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "carts")
public class Cart extends BaseEntity {
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "product_size_id")
    private ProductSize productSize;

    @Column(name = "quantity")
    private Integer quantity;
}
