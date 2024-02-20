package com.Librarysystem.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.PositiveOrZero;
import lombok.Data;

@Data
@Entity
public class BookManagement {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bookId;

	@Column(nullable = false)
	@NotBlank
	private String bookTitle;

	@Pattern(regexp = "^[a-zA-Z\\s]*$", message = "String must only contain alphabetic characters and optional white spaces")
	@NotBlank
	private String author;

	@NotBlank
	private String publisher;

	@Column(nullable = false)
	@NotBlank
	private String ISBNnumber;

	@NotBlank
	private String publishYear;

	@Column(nullable = false)
	@PositiveOrZero
	private int quantity;

}
