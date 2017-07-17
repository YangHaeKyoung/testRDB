package com.navercorp.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.navercorp.board.Service.ArcicleService;
import com.navercorp.board.Service.BbsService;

@Controller
public class IndexController {
	@Autowired private BbsService bbsService;
	@Autowired private ArcicleService atcService;

	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String index(Model model) {
		
		model.addAttribute("bbsList", bbsService.getBbsList(null));
		model.addAttribute("atcList", atcService.getAtcList(null));
		return "main/index";
	}
}
