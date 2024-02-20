package com.Librarysystem.model;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import lombok.Data;

@Data
public class Login {

	@Email
	@NotEmpty(message = "Email is required")
	private String email;

	@NotEmpty
	private String password;

}
