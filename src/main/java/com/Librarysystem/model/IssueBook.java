package com.Librarysystem.model;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
public class IssueBook {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int issueId;

	@ManyToOne
	@JoinColumn(name = "userId", nullable = false)
	@NotNull
	private UserManagement userManagement;

	@ManyToOne
	@JoinColumn(name = "bookId", nullable = false)
	@NotNull
	private BookManagement bookManagement;

	@Column(nullable = false)
	@NotNull

	private Date issueDate;

	@Column(nullable = false)
	@NotNull
	private Date dueDate;

	@Column(nullable = false)
	private String status;

}
