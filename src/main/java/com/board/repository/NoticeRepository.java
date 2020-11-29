package com.board.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.board.entity.Notice;

public interface NoticeRepository extends JpaRepository<Notice, Long> {
}
