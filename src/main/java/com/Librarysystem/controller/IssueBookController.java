package com.Librarysystem.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.Librarysystem.Dao.BookManagementRepository;
import com.Librarysystem.Dao.IssueBookRepository;
import com.Librarysystem.model.BookManagement;
import com.Librarysystem.model.IssueBook;

import jakarta.validation.Valid;

@Controller
public class IssueBookController {

	/* Injection object of IssueBookRepository to perform Crud Operation */
	@Autowired
	private IssueBookRepository issueBookRepository;

	/* inject Object of Bookrepository Minus Quantity */
	@Autowired
	private BookManagementRepository bookManagementRepository;

	// Show Add Book Form
	@GetMapping("/issueBook")
	public String showIssueBook(Model model) {

		// passing Blank Object
		model.addAttribute("issueBook", new IssueBook());
		return "IssueBook";
	}

	/* handling Issue BOOK Form */
	@PostMapping("/processIssueBook")
	public String proceeIssueBook(@Valid @ModelAttribute IssueBook issueBook, BindingResult result, Model model) {

		if (result.hasErrors()) {

			// There are validation errors, handle them appropriately
			model.addAttribute("IssueBook", issueBook);
			System.out.println(result);

			return "IssueBook";
		}

		// Fetching book for updating quantity
		// if book already 0 don't perform issue book
		Optional<BookManagement> optionalBook = bookManagementRepository
				.findById(issueBook.getBookManagement().getBookId());

		if (optionalBook.isPresent()) {
			BookManagement book = optionalBook.get();
			int currentQuantity = book.getQuantity();
			if (currentQuantity > 0) { // Ensure quantity is not negative
				// Decrement quantity
				book.setQuantity(currentQuantity - 1);

				// Save issueBook data into Database
				issueBookRepository.save(issueBook);
				// Save updated book information
				bookManagementRepository.save(book);

				 return "redirect:/allIssue";
			} else {

				model.addAttribute("error", "Book quantity is already 0. Cannot issue book.");
				return "IssueBook";
			}
		} else {

			model.addAttribute("error", "Book not found with the specified ID.");
			return "IssueBook";
		}

	}
	
	
	// Show ALL issue Records
	@GetMapping("/allIssue")
	public String showAllIssue(Model model) {

		/* Fetching All the books; */
		List<Object[]> issueBooks = this.issueBookRepository.getIssueBooks();

		model.addAttribute("issueBooks", issueBooks);

		return "IssueRecordsWithoutReturn";
	}
}
