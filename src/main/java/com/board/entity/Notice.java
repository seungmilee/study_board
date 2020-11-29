package com.board.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.Id;

@Entity
public class Notice {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long idx;

	public Long noticeNo;
	public String name;
	public String title;
	public String contents;

	@Temporal(TemporalType.TIMESTAMP)
	private Date regDt;

	public Long getIdx() {
		return idx;
	}

	public void setIdx(Long idx) {
		this.idx = idx;
	}

	public Long getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(Long noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getCreated() {
		return regDt;
	}

	public void setCreated(Date created) {
		this.regDt = regDt;
	}

	@Override
	public String toString() {
		return "Notice [idx=" + idx + ", noticeNo=" + noticeNo + ", name=" + name + ", title=" + title + ", contents="
				+ contents + ", regDt=" + regDt + "]";
	}


}
