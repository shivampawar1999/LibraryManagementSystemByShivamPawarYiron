package com.Librarysystem.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

@Data
@Entity
public class ReturnBook {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int returnId;

	@ManyToOne
	@JoinColumn(name = "issueId", nullable = false)
	private IssueBook issueId;

	@Column(nullable = false)
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd") // Specify your desired date format
	private Date returnDate;

	@Column(nullable = false)
	private String overDue;
}
