package com.navercorp.board.Repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.navercorp.board.model.Bbs;

@Repository
public interface BbsRepository {

	List<Bbs> selectBbsList(Bbs bbs);

}
