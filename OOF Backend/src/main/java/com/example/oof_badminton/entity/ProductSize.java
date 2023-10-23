package com.example.oof_badminton.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name = "product_size")
public class ProductSize extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "size_id")
    private Size size;

    @Column(name = "stock_quantity")
    private Integer stockQuantity;

    @OneToMany(mappedBy = "productSize", fetch = FetchType.LAZY)
    private List<Cart> carts;

}
