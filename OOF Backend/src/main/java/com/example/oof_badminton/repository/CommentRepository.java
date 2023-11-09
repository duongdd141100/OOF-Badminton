package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Float> {
}
