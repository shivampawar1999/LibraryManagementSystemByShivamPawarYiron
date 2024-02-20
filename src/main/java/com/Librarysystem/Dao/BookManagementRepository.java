package com.Librarysystem.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Librarysystem.model.BookManagement;

@Repository
public interface BookManagementRepository extends JpaRepository<BookManagement, Integer> {
	
	
	            List<BookManagement> findByBookTitle(String bookTitle);
	            
	            List<BookManagement>  findByISBNnumber(String ISBNnumber);
	            
	            List<BookManagement> findByAuthor(String author);

}
