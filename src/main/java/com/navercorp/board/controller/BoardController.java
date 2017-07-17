package com.navercorp.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.navercorp.board.model.Comment;

@Controller
@RequestMapping(value="/board/")
public class BoardController {
	
	@RequestMapping(value="insertComment", method=RequestMethod.POST)
	public void insertComment() {
		//System.out.println(cmt);
	}

}
