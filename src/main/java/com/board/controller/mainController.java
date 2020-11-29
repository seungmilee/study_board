package com.board.controller;

import java.awt.print.Pageable;

import org.h2.mvstore.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.entity.Notice;
import com.board.service.NoticeService;

public class mainController {
	@Autowired
	NoticeService noticeService;

	//---------------------------------------------
	// 게시판 리스트 보기
	//---------------------------------------------
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String index() {
	return "redirect:/board/list/0";
	}


}
