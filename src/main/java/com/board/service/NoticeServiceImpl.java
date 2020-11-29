package com.board.service;

import java.util.List;

import org.h2.mvstore.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Sort;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.board.entity.Notice;
import com.board.repository.NoticeRepository;
import com.mysql.cj.x.protobuf.MysqlxCrud.Order;
import com.mysql.cj.x.protobuf.MysqlxCrud.Order.Direction;

@Service
public class NoticeServiceImpl implements NoticeService {

@Autowired
NoticeServiceImpl noticeRepository;

@Override
//-----------------------------------------
// 게시판 리스트 보기
//-----------------------------------------
public List<Notice> findAll() {
return noticeRepository.findAll();
}

}