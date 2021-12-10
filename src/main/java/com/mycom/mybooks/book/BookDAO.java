package com.mycom.mybooks.book;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBook(BookVO vo) {
		int result = sqlSession.insert("Book.insertBook",vo);
		return result;
	}
	
	public int updateBook(BookVO vo) {
		int result = sqlSession.update("Book.updateBook",vo);
		return result;
	}
	
	public int deleteBook(int id) {
		int result = sqlSession.delete("Book.deleteBook",id);
		return result;
	}
	
	public BookVO getBook(int seq) {
		BookVO one = sqlSession.selectOne("Book.getBook",seq);
		return one;
	}
	
	public List<BookVO> getBookList() {
		List<BookVO> list = sqlSession.selectList("Book.getBookList");
		return list;
	}
	
}
