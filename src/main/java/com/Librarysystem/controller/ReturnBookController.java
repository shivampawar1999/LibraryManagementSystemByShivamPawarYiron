package com.Librarysystem.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.Librarysystem.Dao.BookManagementRepository;
import com.Librarysystem.Dao.IssueBookRepository;
import com.Librarysystem.Dao.ReturnBookRepository;
import com.Librarysystem.model.BookManagement;
import com.Librarysystem.model.IssueBook;
import com.Librarysystem.model.ReturnBook;

@Controller
public class ReturnBookController {

	/* Injection object of ReturnBookRepository to perform Crud Operation */
	@Autowired
	private ReturnBookRepository returnBookRepository;

	/* Injection object of IssueBookRepository to perform Crud Operation */
	@Autowired
	private IssueBookRepository issueBookRepository;

	/* inject Object of Bookrepository Minus Quantity */
	@Autowired
	private BookManagementRepository bookManagementRepository;

	// Show Return Book Form
	@GetMapping("/returnBook/{issueId}")
	public String showReturnBook(@PathVariable("issueId") int issueId, Model model) {

		// Getting data using Id to set into Update Form
		Optional<IssueBook> optionalIssue = this.issueBookRepository.findById(issueId);

		// sending data to update page set in the field
		IssueBook issueBook = optionalIssue.get();

		if (issueBook.getStatus().equals("returned")) {
			return "AlreadyReturn";
		}
		model.addAttribute("issueBook", issueBook);

		return "ReturnBook";
	}

	// process ReturnBookForm
	@PostMapping("/processReturnBook")
	public String processReturnBook(@ModelAttribute ReturnBook returnBook, Model model) {

		System.out.println(returnBook);

		// fetching all the data from id to Update All the fields from different tables

		Optional<IssueBook> optionalIssue = this.issueBookRepository.findById(returnBook.getIssueId().getIssueId());
		IssueBook issueBook = optionalIssue.get();

		Optional<BookManagement> optionalBook = bookManagementRepository
				.findById(returnBook.getIssueId().getBookManagement().getBookId());
		BookManagement book = optionalBook.get();

		// Compare dates and set overDue field
		if (returnBook.getReturnDate() == null || returnBook.getReturnDate().after(issueBook.getDueDate())) {
			returnBook.setOverDue("Overdue");
		} else {
			returnBook.setOverDue("Not Overdue");
		}

		// Fetching book for updating quantity
		if (optionalBook.isPresent()) {

			int currentQuantity = book.getQuantity();
			if (currentQuantity >= 0) { // Ensure quantity is not negative
				// Increment quantity
				book.setQuantity(currentQuantity + 1);

				// Save updated book information
				bookManagementRepository.save(book);

				// Updating The status of Book
				issueBook.setStatus("returned");
				issueBookRepository.save(issueBook);

				// Save the updated ReturnBook entity
				this.returnBookRepository.save(returnBook);

				 return "redirect:/allReturn";
			} else {
				model.addAttribute("error", "Not Found Error.");
				return "ReturnBook";
			}
		} else {

			model.addAttribute("error", "Book not found with the specified ID.");
			return "ReturnBook";
		}

	}

	// Show ALL issue Records
	@GetMapping("/allReturn")
	public String showAllReturn(Model model) {

		/* Fetching All the books; */
		List<Object[]> returnBook = this.returnBookRepository.getReturnBooks();
		System.out.println(returnBook);

		model.addAttribute("returnBook", returnBook);

		return "ShowAllIssue";
	}

}
