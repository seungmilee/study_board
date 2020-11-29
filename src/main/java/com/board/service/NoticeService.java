package com.board.service;

import java.util.List;

import org.h2.mvstore.Page;

import com.board.entity.Notice;

public interface NoticeService {

	public List<Notice> findAll();


}
