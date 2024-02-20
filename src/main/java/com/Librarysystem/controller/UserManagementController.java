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

import com.Librarysystem.Dao.UserManagementRepository;
import com.Librarysystem.model.UserManagement;

import jakarta.validation.Valid;

@Controller
public class UserManagementController {

	/* inject Object of repository class perform CRUD operation */
	@Autowired
	private UserManagementRepository userManagementRepository;

	// Show Add User Form
	@GetMapping("/addUser")
	public String showAddUserForm(Model model) {

		// passing Blank Object
		model.addAttribute("userManagement", new UserManagement());
		return "addUser";
	}

	/* handling AddUser Form */
	@PostMapping("/processUser")
	public String proceeUserForm(@Valid @ModelAttribute UserManagement userManagement, BindingResult result,
			Model model) {

		if (result.hasErrors()) {

			// There are validation errors, handle them appropriately
			model.addAttribute("bookManagement", userManagement);
			System.out.println(result);

			return "addUser";
		}

		// Check if the User already exists in the database
		List<UserManagement> existingEmail = this.userManagementRepository.findByEmail(userManagement.getEmail());

		List<UserManagement> existingContact = this.userManagementRepository.findByContact(userManagement.getContact());

		if (!existingEmail.isEmpty() || !existingContact.isEmpty()) {
			model.addAttribute("error", "Book already exists");
			return "manageBook"; // Return back to the Add User with an error message
		}

		/* Save Data into Database */
		this.userManagementRepository.save(userManagement);

		return "redirect:/allUser";
	}
	
	
	// Show ALL Users
	@GetMapping("/allUser")
	public String showALLUser(Model model) {

		// Fetching All the books;
		List<UserManagement> allUser = this.userManagementRepository.findAll();

		// sending book on JSP
		model.addAttribute("allUser", allUser);
		
		return "showAllUser";
	}
	
	
	// edit User Show Form
		@GetMapping("/editUser/{userId}")
		public String showEditFormUser(@PathVariable("userId") int userId, Model model) {

			// passing Blank Object
			model.addAttribute("userManagement", new UserManagement());

			// Getting data using Id to set into Update Form
			Optional<UserManagement> optionalUser = this.userManagementRepository.findById(userId);

			// sending data to update page set in the field
			UserManagement user = optionalUser.get();

			model.addAttribute("user", user);

			return "editUser";
		}
		
		
		// process Edit Book Form
		@PostMapping("/editUser")
		public String processEditUser(@Valid @ModelAttribute UserManagement userManagement, @RequestParam("userId") int userId,
				BindingResult result, Model model) {

			if (result.hasErrors()) {

				// There are validation errors, handle them appropriately
				model.addAttribute("userManagement", userManagement);
				System.out.println(result);

				return "editUser";
			}

			Optional<UserManagement> optionalExistingUser =this.userManagementRepository.findById(userId);

			if (optionalExistingUser.isPresent()) {
				// Update existing book with new data
				UserManagement existingUser = optionalExistingUser.get();
				existingUser.setUserName(userManagement.getUserName());
				existingUser.setContact(userManagement.getContact());
				existingUser.setEmail(userManagement.getEmail());
				

				// Save updated user back to the database
				this.userManagementRepository.save(existingUser);
				return "redirect:/allUser"; // Redirect to a page showing all User
			}

			return "editUser";
		}
		
		
		// Delete Book
		@GetMapping("/deleteUser/{userId}")
		public String deleteUser(@PathVariable("userId") int userId, Model model) {

		this.userManagementRepository.deleteById(userId);
		return "redirect:/allUser";
		}

}
