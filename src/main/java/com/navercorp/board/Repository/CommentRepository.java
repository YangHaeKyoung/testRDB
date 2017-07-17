package com.navercorp.board.Repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.navercorp.board.model.Comment;

@Repository
public interface CommentRepository {

	List<Comment> selectCommentList(Comment cmt);
}
