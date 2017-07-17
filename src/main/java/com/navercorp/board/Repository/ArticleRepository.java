package com.navercorp.board.Repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.navercorp.board.model.Article;

@Repository
public interface ArticleRepository {

	List<Article> selectAticleList(Article atc);

}
