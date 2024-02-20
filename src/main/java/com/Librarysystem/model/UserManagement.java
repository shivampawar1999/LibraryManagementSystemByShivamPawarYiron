package com.Librarysystem.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
@Entity
public class UserManagement {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int userId;
	
	@Column(nullable = false)
	@NotBlank
	@Pattern(regexp = "^[a-zA-Z\\s]*$", message = "String must only contain alphabetic characters and optional white spaces")
	public String userName;
	
	@Column(unique = true, nullable = false)
	@Pattern(regexp = "^\\+?[0-9]{7,20}$", message = "Invalid phone number format")
	@Size(min = 7, max = 15, message = "Phone number must be between 7 and 20 digits")
	public String contact;
	
	
	@Column(unique = true, nullable = false)
	@Email
	@NotBlank
	public String email;

}
