package com.navercorp.board.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.navercorp.board.Repository.BbsRepository;
import com.navercorp.board.model.Bbs;

@Service
public class BbsService {

	@Autowired private BbsRepository bbsRepository;
	
	public List<Bbs> getBbsList(Bbs bbs) {
		return bbsRepository.selectBbsList(bbs);
	}

}
