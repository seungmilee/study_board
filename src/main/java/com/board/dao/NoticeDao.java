package com.board.dao;

import java.util.List;

import com.board.entity.Notice;

public interface NoticeDao {

	public List<Notice> NoticeList() throws Exception;
}
