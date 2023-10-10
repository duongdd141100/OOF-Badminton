package com.example.oof_badminton.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name = "role")
public class Role extends BaseEntity{
    @Column(name = "name")
    private String name;

    @OneToMany(mappedBy = "role")
    List<UserRole> userRoles;
}
