package com.Librarysystem.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Librarysystem.model.AdminRegistrationForm;

@Repository
public interface AdminRegistrationRepository extends JpaRepository<AdminRegistrationForm, Integer> {
	
	List<AdminRegistrationForm> findByEmail(String email);
	
	List<AdminRegistrationForm> findByContact(String contact);

}
