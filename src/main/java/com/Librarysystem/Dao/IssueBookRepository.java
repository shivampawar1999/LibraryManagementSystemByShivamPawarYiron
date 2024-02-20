package com.Librarysystem.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.Librarysystem.model.IssueBook;

@Repository
public interface IssueBookRepository extends JpaRepository<IssueBook, Integer> {

	@Query(value = "SELECT ib.issue_id, ib.issue_date, ib.due_date, ib.status, um.user_id, um.user_name, um.email, um.contact,bm.book_id, bm.book_title, bm.author, bm.quantity \r\n"
			+ "FROM librarymanagementsystem.issue_book ib JOIN librarymanagementsystem.user_management um ON ib.user_id = um.user_id JOIN librarymanagementsystem.book_management bm ON ib.book_id = bm.book_id;\r\n"
			+ "", nativeQuery = true)
	List<Object[]> getIssueBooks();
}
