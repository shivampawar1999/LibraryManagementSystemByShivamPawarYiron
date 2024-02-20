package com.Librarysystem.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Librarysystem.model.UserManagement;

@Repository
public interface UserManagementRepository extends JpaRepository<UserManagement, Integer>{
	
	List<UserManagement> findByEmail(String email);
	
	List<UserManagement> findByContact(String contact);

}
