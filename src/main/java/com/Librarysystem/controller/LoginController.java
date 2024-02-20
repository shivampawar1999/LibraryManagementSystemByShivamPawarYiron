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
import com.Librarysystem.model.Login;

import jakarta.validation.Valid;

@Controller
public class LoginController {

	/* inject Object of repository class perform CRUD operation */
	@Autowired
	private AdminRegistrationRepository adminRegistrationRepository;

	// Inside your controller method
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	/* Show AdminForm method */
	@GetMapping("/")
	public String showLoginForm(Model model) {

		// passing Blank Object
		model.addAttribute("login", new Login());

		return "login";
	}

	/* process Login Form */
	@PostMapping("/loginProcess")
	public String processLoginForm(@Valid @ModelAttribute Login login, BindingResult result, Model model) {

		if (result.hasErrors()) {

			// There are validation errors, handle them appropriately
			model.addAttribute("login", login);
			System.out.println(result);

			return "login";
		}

		/*------------------------------------------ Login Process ---------------------------------------------------------- */

		// Fetching DataFrom DataBase table admin_registration_form
		List<AdminRegistrationForm> byEmail = this.adminRegistrationRepository.findByEmail(login.getEmail());

		if (!byEmail.isEmpty()) {

			AdminRegistrationForm admin = byEmail.get(0); // Get the first element/Object from the list

			if (passwordEncoder.matches(login.getPassword(), admin.getPassword())) {

			
				// Password matches, login successful
				 return "redirect:/dashboard"; // Redirect to the DashBoard page
			} else {
				// Authentication failed
				model.addAttribute("error", "Invalid email or password");
				return "login"; // Return back to login form with error message
			}
		} else {
			// User not found
			model.addAttribute("error", "User not found");
			return "login"; // Return back to login form with error message
		}

	}

}
