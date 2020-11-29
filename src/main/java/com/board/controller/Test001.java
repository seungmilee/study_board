package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.entity.Notice;



@Controller
public class Test001 {





//	@RequestMapping("/list")
//	public String list(Model model) {
//
//		return "test/list";
//	}

//	@RequestMapping(value="/list.do")
//	public ModelAndView list() throws Exception {
//		ModelAndView mav = new ModelAndView();
//		List<Notice> list = service.NoticeList();
//		mav.setViewName("list");
//		Map<String, Object> map = new HashMap<String, Object>();
//		mav.addObject("map",map);
//		for(Notice a : list) {
//			System.out.println();
//		}
//		return mav;
//	}

	@RequestMapping("/write")
	public String write() {
		return "test/write";
	}
}
