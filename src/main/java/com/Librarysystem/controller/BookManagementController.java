package com.Librarysystem.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Librarysystem.Dao.BookManagementRepository;
import com.Librarysystem.model.BookManagement;

import jakarta.validation.Valid;

@Controller
public class BookManagementController {

	/* inject Object of repository class perform CRUD operation */
	@Autowired
	private BookManagementRepository bookManagementRepository;

	// Show Add Book Form
	@GetMapping("/manageBook")
	public String showManageBook(Model model) {

		// passing Blank Object
		model.addAttribute("bookManagement", new BookManagement());
		return "manageBook";
	}

	/* handling BookProcess Form */
	@PostMapping("/processBook")
	public String proceeBookForm(@Valid @ModelAttribute BookManagement bookManagement, BindingResult result,
			Model model) {

		if (result.hasErrors()) {

			// There are validation errors, handle them appropriately
			model.addAttribute("bookManagement", bookManagement);
			System.out.println(result);

			return "manageBook";
		}

		// Check if the Book already exists in the database
		List<BookManagement> existingBookTitle = this.bookManagementRepository
				.findByBookTitle(bookManagement.getBookTitle());

		List<BookManagement> existingISBN = this.bookManagementRepository
				.findByISBNnumber(bookManagement.getISBNnumber());

		if (!existingBookTitle.isEmpty() || !existingISBN.isEmpty()) {
			model.addAttribute("error", "Book already exists");
			return "manageBook"; // Return back to the Add Book with an error message
		}

		/* Save Data into Database */
		this.bookManagementRepository.save(bookManagement);

		return "redirect:/allBooks";
	}

	// Show ALL Books
	@GetMapping("/allBooks")
	public String showALLBooks(Model model) {

		// Fetching All the books;
		List<BookManagement> allBooks = this.bookManagementRepository.findAll();

		// sending book on JSP
		model.addAttribute("allBooks", allBooks);
		System.out.println(allBooks);

		return "showAllBooks";
	}

	// edit Book Show Form
	@GetMapping("/editBook/{bookId}")
	public String showEditForm(@PathVariable("bookId") int bookId, Model model) {

		// passing Blank Object
		model.addAttribute("bookManagement", new BookManagement());

		// Getting data using Id to set into Update Form
		Optional<BookManagement> optionalBook = this.bookManagementRepository.findById(bookId);

		// sending data to update page set in the field
		BookManagement book = optionalBook.get();

		model.addAttribute("book", book);

		return "updateBook";
	}

	// process Edit Book Form
	@PostMapping("/editBook")
	public String processEdit(@Valid @ModelAttribute BookManagement bookManagement, @RequestParam("bookId") int bookId,
			BindingResult result, Model model) {

		if (result.hasErrors()) {

			// There are validation errors, handle them appropriately
			model.addAttribute("bookManagement", bookManagement);
			System.out.println(result);

			return "updateBook";
		}

		Optional<BookManagement> optionalExistingBook = this.bookManagementRepository.findById(bookId);

		if (optionalExistingBook.isPresent()) {
			// Update existing book with new data
			BookManagement existingBook = optionalExistingBook.get();
			existingBook.setBookTitle(bookManagement.getBookTitle());
			existingBook.setAuthor(bookManagement.getAuthor());
			existingBook.setISBNnumber(bookManagement.getISBNnumber());
			existingBook.setPublisher(bookManagement.getPublisher());
			existingBook.setPublishYear(bookManagement.getPublishYear());
			existingBook.setQuantity(bookManagement.getQuantity());

			// Save updated book back to the database
			this.bookManagementRepository.save(existingBook);
			return "redirect:/allBooks"; // Redirect to a page showing all books
		}

		return "updateBook";
	}

	// Delete Book
	@GetMapping("/deleteBook/{bookId}")
	public String deleteBook(@PathVariable("bookId") int bookId, Model model) {

		this.bookManagementRepository.deleteById(bookId);
		return "redirect:/allBooks";
	}

}
