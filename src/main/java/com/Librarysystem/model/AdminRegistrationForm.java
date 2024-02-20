package com.Librarysystem.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
@Entity
public class AdminRegistrationForm {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int adminId;

	@Column(nullable = false)
	@NotEmpty
	@Pattern(regexp = "[a-zA-Z]+", message = "First name must only contain letters")
	private String firstName;

	@Pattern(regexp = "[a-zA-Z]+", message = "First name must only contain letters")
	private String lastName;

	@Column(unique = true, nullable = false)
	@Email
	@NotEmpty(message = "Email is required")
	private String email;

	@Column(nullable = false)
	@NotEmpty
	@Size(min = 8, max = 100) 	//length 100 because of Encryption password
	@Pattern(regexp = "(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[^\\da-zA-Z]).*", message = "Password must contain at least one lowercase letter, one uppercase letter, one number, and one special character")
	private String password;

	@Column(unique = true)
	@Pattern(regexp = "^\\+?[0-9]{7,20}$", message = "Invalid phone number format")
	@Size(min = 7, max = 15, message = "Phone number must be between 7 and 20 digits")
	private String contact;

}
