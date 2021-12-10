package com.mycom.mybooks.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {

	@Autowired
	BookService bookService;

	@RequestMapping(value = "/book/list", method = RequestMethod.GET)
	public String booklist(Model model) {
		model.addAttribute("list", bookService.getBookList());
		return "list";
	}

	@RequestMapping(value = "/book/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}

	@RequestMapping(value = "/book/addok", method = RequestMethod.POST)
	public String addPostOK(BookVO vo) {
		int i = bookService.insertBook(vo);
		if (i == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:list";
	}

	@RequestMapping(value = "/book/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BookVO BookVO = bookService.getBook(id);
		model.addAttribute("bookVO", BookVO);
		return "editform";
	}

	@RequestMapping(value = "/book/editok", method = RequestMethod.POST)
	public String editPostOk(BookVO vo) {
		if (bookService.updateBook(vo) == 0)
			System.out.println("데이터 수정 실패 ");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:list";
	}

	@RequestMapping(value = "/book/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if (bookService.deleteBook(id) == 0)
			System.out.println("데이터 삭제 실패 ");
		else
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:../list";
	}

}
