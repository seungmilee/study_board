package com.board;

import java.sql.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

import com.board.entity.Notice;
import com.board.repository.NoticeRepository;

@SpringBootApplication
public class StudybbsApplication {

	public static void main(String[] args) {
		SpringApplication.run(StudybbsApplication.class, args);
	}

	public void run(String...args) {
		//테스트를 위해 글6개 입력
		Notice b1 = new Notice();
		b1.setIdx((long) 1);
		b1.setNoticeNo((long) 1);
		b1.setName("홍길동1");
		b1.setTitle("JPA강좌 추천해 주세요1~");
		b1.setName("홍길동1");
		b1.setContents("test");

		//NoticeRepository.save(b1));


	}
}