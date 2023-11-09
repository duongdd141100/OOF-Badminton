package com.example.oof_badminton.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "comments")
public class Comment extends BaseEntity{
    @Column(name = "commentator")
    private String commentator;

    @Column(name = "comment")
    private String comment;

    @Column(name = "star")
    private Integer star;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
}
