package com.library.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.demo.entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	public User findByEmailId(String emailId);

}
