package com.Librarysystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.Librarysystem.Dao.AdminRegistrationRepository;
import com.Librarysystem.model.AdminRegistrationForm;

import jakarta.validation.Valid;

@Controller
public class AdminRegistrationController {

	/* inject Object of repository class perform CRUD operation */
	@Autowired
	private AdminRegistrationRepository adminRegistrationRepository;

	BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

	/* Show AdminForm method */
	@GetMapping("/adminRegister")
	public String showAdminRegistrationForm(Model model) {

		// passing Blank Object
		model.addAttribute("adminRegistrationForm", new AdminRegistrationForm());

		return "AdminRegistrationForm";
	}

	// Use a secure form submission method (e.g., POST)
	@PostMapping("/processAdminRegister")
	public String processAdminRegisterForm(@Valid @ModelAttribute AdminRegistrationForm adminRegistrationForm,
			BindingResult result, Model model) {

		if (result.hasErrors()) {

			// There are validation errors, handle them appropriately
			model.addAttribute("adminRegistrationForm", adminRegistrationForm);
			System.out.println(result);

			return "AdminRegistrationForm";
		}

		// Check if the email already exists in the database
		List<AdminRegistrationForm> existingEmails = this.adminRegistrationRepository
				.findByEmail(adminRegistrationForm.getEmail());
		List<AdminRegistrationForm> existingContacts = this.adminRegistrationRepository
				.findByContact(adminRegistrationForm.getContact());
		if (!existingEmails.isEmpty() || !existingContacts.isEmpty()) {
			model.addAttribute("error", "User already exists ");
			return "AdminRegistrationForm"; // Return back to the registration form with an error message
		}

		/* Password Encryption Process */
		String encryptedPassword = bCryptPasswordEncoder.encode(adminRegistrationForm.getPassword());

		/* Encrypted Password */
		adminRegistrationForm.setPassword(encryptedPassword);

		/* Save Data into Database */
		this.adminRegistrationRepository.save(adminRegistrationForm);


		 return "redirect:/"; // Redirect to the login page

	}

}
