package com.navercorp.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.navercorp.board.Repository.ArticleRepository;
import com.navercorp.board.model.Article;

@Service
public class ArcicleService {

	@Autowired private ArticleRepository atcRepository;

	public List<Article> getAtcList(Article atc) {
		return atcRepository.selectAticleList(atc);
	}
	
}
