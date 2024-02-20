package com.Librarysystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Librarysystem.Dao.BookManagementRepository;
import com.Librarysystem.model.BookManagement;

@Controller
public class SearchBookController {

	@Autowired
	private BookManagementRepository bookManagementRepository;

	public List<BookManagement> BookList;

	@GetMapping("/searchBook")
	public String searchBook() {

		return "searchBook";
	}

	@PostMapping("/searchBookprocess")
	public String searchBookProcess(@RequestParam("booksearch") String bookserach, @RequestParam("value") String value ,Model model) {

		if (bookserach.equals("bookTitle")) {
			BookList = this.bookManagementRepository.findByBookTitle(value);

		} else if (bookserach.equals("ISBNnumber")) {

			BookList = this.bookManagementRepository.findByISBNnumber(value);

		} else {
			BookList = this.bookManagementRepository.findByAuthor(value);
		}

		if (BookList != null) {
			model.addAttribute("BookList", BookList);
		} else {
			model.addAttribute("error", "Book Not Found In The Database");
		}

		return "searchResult";
	}

}
