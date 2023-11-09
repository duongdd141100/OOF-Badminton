package com.example.oof_badminton.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name = "suppliers")
public class Supplier extends BaseEntity {

    @Column(name = "name")
    private String name;

//    @OneToMany(mappedBy = "supplier", fetch = FetchType.LAZY)
//    private List<Product> products;

}
