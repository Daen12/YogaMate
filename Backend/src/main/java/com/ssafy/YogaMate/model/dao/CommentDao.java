package com.ssafy.YogaMate.model.dao;

import com.ssafy.YogaMate.model.dto.Comment;

import java.util.List;

public interface CommentDao {
    List<Comment> getAllComments(int article_idx);

    boolean writeComment(Comment comment);

    boolean updateComment(Comment comment);

    boolean deleteComment(int idx);
}