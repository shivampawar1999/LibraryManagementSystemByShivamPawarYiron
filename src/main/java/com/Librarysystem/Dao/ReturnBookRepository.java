package com.Librarysystem.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.Librarysystem.model.ReturnBook;

@Repository
public interface ReturnBookRepository extends JpaRepository<ReturnBook, Integer> {

	@Query(value = "SELECT rb.return_id, rb.return_date, rb.over_due, ib.issue_id, ib.issue_date, ib.due_date, ib.status, um.user_id, um.user_name, um.email, um.contact, bm.book_id, bm.book_title, bm.author, bm.quantity\r\n"
			+ "FROM return_book rb INNER JOIN issue_book ib ON rb.issue_id =  ib.issue_id INNER JOIN user_management um ON ib.user_id = um.user_id INNER JOIN book_management bm ON ib.book_id =bm.book_id;", nativeQuery = true)
	List<Object[]> getReturnBooks();

}
