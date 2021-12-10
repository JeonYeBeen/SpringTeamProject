package com.mycom.mybooks.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDAO BookDAO;

	@Override
	public int insertBook(BookVO vo) {
		return BookDAO.insertBook(vo);
	}

	@Override
	public int deleteBook(int seq) {
		return BookDAO.deleteBook(seq);
	}

	@Override
	public int updateBook(BookVO vo) {
		return BookDAO.updateBook(vo);
	}

	@Override
	public BookVO getBook(int seq) {
		return BookDAO.getBook(seq);
	}

	@Override
	public List<BookVO> getBookList() {
		return BookDAO.getBookList();
	}

}
