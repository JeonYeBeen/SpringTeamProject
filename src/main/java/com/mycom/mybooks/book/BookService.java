package com.mycom.mybooks.book;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface BookService {

	public int insertBook(BookVO vo);

	public int deleteBook(int id);

	public int updateBook(BookVO vo);

	public BookVO getBook(int seq);

	public List<BookVO> getBookList();
	
}
